package com.yyf.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Random;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jdom.JDOMException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.yyf.controller.util.HttpUtil;
import com.yyf.controller.util.PayCommonUtil;
import com.yyf.controller.util.XMLUtil;
import com.yyf.model.Balancetab;
import com.yyf.service.BalancetabService;
import com.yyf.util.Md5Util;

@Controller
@RequestMapping("/payment")
public class R_paymentController {

	// 自动装配 创建订单、获取二维码
	@Autowired
	private BalancetabService balancetabService;
	
	
	private int defaultWidthAndHeight = 300;

	@RequestMapping(value = "/qrcode", method = RequestMethod.GET)
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String total_fee = request.getParameter("shouprices");// 商品价格
		String kuaikeId = request.getParameter("kuaikeid");// 快客id
		System.out.println("kuaikeid:"+kuaikeId);
		String zhifupwd="123456";
		String md5 = Md5Util.md5(zhifupwd);
		double fee = Double.parseDouble(total_fee) * 100;
		int a = (int) fee;
		String total = String.valueOf(a);
		String out_trade_no = System.currentTimeMillis() + getRandomString(5);
		String body = "充值付款";// 商品信息
		String trade_type = "NATIVE";// 交易类型
		String product_id = getRandomString(5) + System.currentTimeMillis();
		Balancetab balancetab = balancetabService.queryKuaikeId(kuaikeId);
		if(balancetab==null){
			balancetabService.insert(kuaikeId,out_trade_no,zhifupwd);
		}else{
			balancetabService.setKuaikeIdStatus(kuaikeId, out_trade_no);
		}
		Properties p = new Properties();
		InputStream input = R_paymentController.class.getResourceAsStream("/payConfig.properties");
		InetAddress ia = null;
		try {
			p.load(input);
			// 调用统一下单接口
			SortedMap<Object, Object> packageParams = new TreeMap<Object, Object>();
			String nonce_str = getRandomString(16);
			packageParams.put("appid", String.valueOf(p.get("APP_ID")));
			packageParams.put("mch_id", String.valueOf(p.get("MCH_ID")));
			packageParams.put("nonce_str", nonce_str);
			packageParams.put("body", body);
			packageParams.put("out_trade_no", out_trade_no);
			packageParams.put("total_fee", total);
			ia = ia.getLocalHost();
//			packageParams.put("spbill_create_ip", ia.getLocalHost());//服务器ip
			packageParams.put("spbill_create_ip",  String.valueOf(p.get("CREATE_IP")));//本地测试ip
			packageParams.put("notify_url", String.valueOf(p.get("RECHARGE_URL")));
			packageParams.put("trade_type", trade_type);
			// packageParams.put("product_id", product_id);
			request.setAttribute("out_trade_no", out_trade_no);
			request.setAttribute("body", body);

			String sign = PayCommonUtil.createSign("UTF-8", packageParams, String.valueOf(p.get("API_KEY")));
			packageParams.put("sign", sign);

			String requestXML = PayCommonUtil.getRequestXml(packageParams);
			String resXml = HttpUtil.postData(String.valueOf(p.get("UFDODER_URL")), requestXML);
			Map map;
			try {
				map = XMLUtil.doXMLParse(resXml);
				String result_code = (String) map.get("result_code");// 返回状态码
				if ("SUCCESS".equals(result_code)) {
					// 统一下单接口返回成功，获取二维码地址
					String urlCode = (String) map.get("code_url");
					long time_stamp = System.currentTimeMillis() / 1000; // 时间戳
					SortedMap<Object, Object> packageParams1 = new TreeMap<Object, Object>();
					packageParams1.put("appid", String.valueOf(p.get("APP_ID")));
					packageParams1.put("mch_id", String.valueOf(p.get("MCH_ID")));
					packageParams1.put("time_stamp", String.valueOf(time_stamp));
					packageParams1.put("nonce_str", nonce_str);
					packageParams1.put("product_id", product_id);

					String QRsign = PayCommonUtil.createSign("UTF-8", packageParams1, String.valueOf(p.get("API_KEY")));

					packageParams1.put("sign", QRsign);

					// 生成参数
					String str = ToUrlParams(packageParams1);
					String payurl = urlCode;

					// 生成二维码
					Map<EncodeHintType, Object> hints = new HashMap<EncodeHintType, Object>();
					// 指定纠错等级
					hints.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L);
					// 指定编码格式
					hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
					// hints.put(EncodeHintType.MARGIN, 1);
					try {
						BitMatrix bitMatrix = new MultiFormatWriter().encode(payurl, BarcodeFormat.QR_CODE,
								defaultWidthAndHeight, defaultWidthAndHeight, hints);
						OutputStream out = response.getOutputStream();
						MatrixToImageWriter.writeToStream(bitMatrix, "png", out);// 输出二维码
						out.flush();
						out.close();

					} catch (WriterException e) {
						e.printStackTrace();
					}
				}
			} catch (JDOMException e1) {
				e1.printStackTrace();
			}
		} catch (Exception e) {

		}
	}

	public static String getRandomString(int length) { // length表示生成字符串的长度
		String base = "abcdefghijklmnopqrstuvwxyz0123456789";
		Random random = new Random();
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < length; i++) {
			int number = random.nextInt(base.length());
			sb.append(base.charAt(number));
		}
		return sb.toString();
	}

	public static String ToUrlParams(SortedMap<Object, Object> packageParams) {
		// 实际可以不排序
		StringBuffer sb = new StringBuffer();
		Set es = packageParams.entrySet();
		Iterator it = es.iterator();
		while (it.hasNext()) {
			Map.Entry entry = (Map.Entry) it.next();
			String k = (String) entry.getKey();
			String v = (String) entry.getValue();
			if (null != v && !"".equals(v)) {
				sb.append(k + "=" + v + "&");
			}
		}

		sb.deleteCharAt(sb.length() - 1);// 删掉最后一个&
		return sb.toString();
	}
	
	@RequestMapping(value = "/query", method = RequestMethod.POST)
	protected void query(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String kuaikeid = request.getParameter("kuaikeid");// 下单id
		String selectresult = balancetabService.selectresult(kuaikeid);//取出订单付款状态
		PrintWriter out = response.getWriter();
		out.print(selectresult);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	public static void main(String[] args) {
		String total_fee = "0.01";// 商品价格
		double fee = Double.parseDouble(total_fee) * 100;
		int a = (int) fee;
		String total = String.valueOf(a);
	}
}
