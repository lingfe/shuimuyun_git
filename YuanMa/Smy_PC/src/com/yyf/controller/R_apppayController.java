package com.yyf.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Random;
import java.util.SortedMap;
import java.util.TreeMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.methods.GetMethod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.yyf.controller.util.HttpUtil;
import com.yyf.controller.util.PayCommonUtil;
import com.yyf.controller.util.XMLUtil;
import com.yyf.service.R_zhiordertabService;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("/weixin")
public class R_apppayController {
	private R_zhiordertabService r_zhiordertabService;
	@RequestMapping(value = "/pay", method = RequestMethod.GET)
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String total_fee = request.getParameter("shouprices");// 商品价格
		String shopName = request.getParameter("shopName");// 商品名称
		String xiaId = request.getParameter("xiaid");// 下单id 商品id
		double fee = Double.parseDouble(total_fee) * 100;
		int a = (int) fee;
		String total = String.valueOf(a);

		String out_trade_no = System.currentTimeMillis() + getRandomString(5);
		String order_no = System.currentTimeMillis() + getRandomString(3);
		String body = "下单请求...";// 商品信息
		String trade_type = "JSAPI";// 交易类型
		String product_id = getRandomString(5) + System.currentTimeMillis();

		Properties p = new Properties();
		InputStream input = R_NotifyController.class.getResourceAsStream("/payConfig.properties");
		// InetAddress ia = null;
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
			// ia = ia.getLocalHost();
			// packageParams.put("spbill_create_ip", ia.getLocalHost());//服务器ip
			packageParams.put("spbill_create_ip", String.valueOf(p.get("CREATE_IP")));// 本地测试ip
			packageParams.put("notify_url", String.valueOf(p.get("NOTIFY_URL")));
			packageParams.put("trade_type", trade_type);
			// packageParams.put("product_id", product_id);
			request.setAttribute("out_trade_no", out_trade_no);
			request.setAttribute("body", body);

			String sign = PayCommonUtil.createSign("UTF-8", packageParams, String.valueOf(p.get("API_KEY")));
			packageParams.put("sign", sign);

			String requestXML = PayCommonUtil.getRequestXml(packageParams);

			String resXml = HttpUtil.postData(String.valueOf(p.get("UFDODER_URL")), requestXML);
			Map map;
			map = XMLUtil.doXMLParse(resXml);
			String result_code = (String) map.get("result_code");// 返回状态码
			if ("SUCCESS".equals(result_code)) {
				// 统一下单接口返回成功，获取二维码地址
				String urlCode = (String) map.get("code_url");
				String prepay_id = (String) map.get("prepay_id");// 预支付交易会话标识
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

	@RequestMapping(value = "/getopenid", method = RequestMethod.GET)
	public String getShowCode(@RequestParam(value = "code", required = false) String code,
			@RequestParam(value = "shouprices", required = false) String total_fee,
			@RequestParam(value = "xiaid", required = false) String xiaId) throws IOException {
		// 获取access_token
		Properties p = new Properties();
		InputStream input = R_NotifyController.class.getResourceAsStream("/payConfig.properties");
		p.load(input);
		// SortedMap<Object, Object> Params = new TreeMap<Object, Object>();
		// Params.put("grant_type", "client_credential");
		// Params.put("appid", p.get("APP_ID"));
		// Params.put("secret", p.get("APPSECRET"));
		// String getaccess_token = PayCommonUtil.getRequestXml(Params);
		// String gettoken =
		// HttpUtil.postData(String.valueOf(p.get("UFDODER_URL")),
		// getaccess_token);
		// Map map1;

		System.out.println("code:" + code);
		String openid = "";
		String access_token = "";
		String paysign = "";
		String package1 = "";
		long timeStamp = System.currentTimeMillis();
		String nonceStr = getRandomString(16);
		String appId = String.valueOf(p.get("APP_ID"));
		try {
			List<Object> list = accessToken(code);
			if (list.size() != 0) {
				openid = list.get(0).toString();
				System.out.println("openid:" + openid);
				access_token = list.get(1).toString();
				String shopName = "商品";// 商品名称
				double fee = Double.parseDouble(total_fee) * 100;
				int a = (int) fee;
				String total = String.valueOf(a);
				String out_trade_no = System.currentTimeMillis() + getRandomString(5);
				String order_no = System.currentTimeMillis() + getRandomString(3);
				String body = "下单请求...";// 商品信息
				String trade_type = "JSAPI";// 交易类型
				String product_id = getRandomString(5) + System.currentTimeMillis();
				
//				int exsit = r_zhiordertabService.selectExsit(xiaId);
//				if(exsit==0){
//					r_zhiordertabService.insertMessage(total, xiaId, out_trade_no, body, trade_type, product_id, order_no,
//							shopName);// 保存数据库
//				}else{
//					r_zhiordertabService.updateorder(total, xiaId, out_trade_no, body, trade_type, product_id, order_no,
//							shopName);// 更新数据库
//				}
				try {
					// 调用统一下单接口
					SortedMap<Object, Object> packageParams = new TreeMap<Object, Object>();
					String nonce_str = getRandomString(16);
					packageParams.put("appid", appId);
					packageParams.put("mch_id", String.valueOf(p.get("MCH_ID")));
					packageParams.put("nonce_str", nonce_str);
					packageParams.put("body", body);
					packageParams.put("out_trade_no", out_trade_no);
					packageParams.put("total_fee", total);
					packageParams.put("openid", openid);
					// ia = ia.getLocalHost();
					// packageParams.put("spbill_create_ip",
					// ia.getLocalHost());//服务器ip
					packageParams.put("spbill_create_ip", String.valueOf(p.get("CREATE_IP")));// 本地测试ip
					packageParams.put("notify_url", String.valueOf(p.get("NOTIFY_URL")));
					packageParams.put("trade_type", trade_type);
					// packageParams.put("product_id", product_id);

					String sign = PayCommonUtil.createSign("UTF-8", packageParams, String.valueOf(p.get("API_KEY")));
					packageParams.put("sign", sign);

					String requestXML = PayCommonUtil.getRequestXml(packageParams);

					String resXml = HttpUtil.postData(String.valueOf(p.get("UFDODER_URL")), requestXML);
					Map map;
					map = XMLUtil.doXMLParse(resXml);
					String result_code = (String) map.get("result_code");// 返回状态码
					if ("SUCCESS".equals(result_code)) {
						// 统一下单接口返回成功，获取预支付交易会话标识响应给页面调用js
						String urlCode = (String) map.get("code_url");
						String prepay_id = (String) map.get("prepay_id");// 预支付交易会话标识
						SortedMap<Object, Object> packageParams1 = new TreeMap<Object, Object>();
						packageParams1.put("appId", appId);
						packageParams1.put("timeStamp", timeStamp);
						packageParams1.put("nonceStr", nonceStr);
						packageParams1.put("package", "prepay_id=" + prepay_id);
						packageParams1.put("signType", "MD5");
						packageParams1.put("trade_type", trade_type);
						paysign = PayCommonUtil.createSign("UTF-8", packageParams1, String.valueOf(p.get("API_KEY")));
						package1 = "prepay_id=" + prepay_id;
					}
				} catch (Exception e) {

				}

			} else {
				System.out.println("获取失败");
			}
		} catch (IOException e) {
			System.out.println("根据code获取微信用户的openId出现错误");
		}

		return "APP/pay?appId=" + appId + "&timeStamp=" + timeStamp + "&nonceStr=" + nonceStr + "&package=" + package1
				+ "&paySign=" + paysign + "&shouprices=" + total_fee;
	}

	public List<Object> accessToken(String code) throws IOException {
		List<Object> list = new ArrayList<Object>();
		String url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + "wxdb736f84a6134704" + "&secret="
				+ "ba6f91921185e71e4d4800bee9a89f8e" + "&code=" + code + "&grant_type=authorization_code";
		GetMethod get = null;
		get = new GetMethod(url);

		HttpClient client = new HttpClient();
		client.getParams().setParameter("http.protocol.content-charset", "utf-8");
		client.getParams().setBooleanParameter("http.protocol.expect-continue", false);
		client.getHttpConnectionManager().getParams().setConnectionTimeout(30000);
		client.getHttpConnectionManager().getParams().setSoTimeout(30000);

		get.addRequestHeader("Content-type", "te|xt/html;charset=UTF-8");

		int statusCode = 0;
		try {
			statusCode = client.executeMethod(get);
		} catch (HttpException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (statusCode == HttpStatus.SC_OK) {
			InputStream resInputStream = null;
			try {
				resInputStream = get.getResponseBodyAsStream();
			} catch (IOException e) {
				e.printStackTrace();
			}
			BufferedReader reader = new BufferedReader(new InputStreamReader(resInputStream, "utf-8"));
			String line;
			while ((line = reader.readLine()) != null) {
				System.out.println("line:" + line);
				JSONObject jsonObject = new JSONObject();
				try {
					jsonObject = JSONObject.fromObject(line);
					String openid = jsonObject.getString("openid");
					String access_token = jsonObject.getString("access_token");
					System.out.println("openid:" + openid);
					list.add(openid);
					list.add(access_token);
				} catch (Exception e) {
					jsonObject = JSONObject.fromObject(line);
					String errcode = jsonObject.getString("errcode");
					System.out.println("errcode:" + errcode);
				}
			}
		}
		return list;

	}

//	public static void main(String[] args) {
//		String total_fee = "1";// 商品价格
//		String shopName = "2";// 商品名称
//		String xiaId = "3";// 下单id 商品id
//		double fee = Double.parseDouble(total_fee) * 100;
//		int a = (int) fee;
//		String total = String.valueOf(a);
//
//		String out_trade_no = System.currentTimeMillis() + getRandomString(5);
//		String order_no = System.currentTimeMillis() + getRandomString(3);
//		String body = "下单请求...";// 商品信息
//		String trade_type = "JSAPI";// 交易类型
//		String product_id = getRandomString(5) + System.currentTimeMillis();
//
//		Properties p = new Properties();
//		InputStream input = R_NotifyController.class.getResourceAsStream("/payConfig.properties");
//		// InetAddress ia = null;
//		try {
//			p.load(input);
//			// 调用统一下单接口
//			SortedMap<Object, Object> packageParams = new TreeMap<Object, Object>();
//			String nonce_str = getRandomString(16);
//			packageParams.put("appid", String.valueOf(p.get("APP_ID")));
//			packageParams.put("mch_id", String.valueOf(p.get("MCH_ID")));
//			packageParams.put("nonce_str", nonce_str);
//			packageParams.put("body", body);
//			packageParams.put("out_trade_no", out_trade_no);
//			packageParams.put("total_fee", total);
//			packageParams.put("openid", "324");
//			// ia = ia.getLocalHost();
//			// packageParams.put("spbill_create_ip", ia.getLocalHost());//服务器ip
//			packageParams.put("spbill_create_ip", String.valueOf(p.get("CREATE_IP")));// 本地测试ip
//			packageParams.put("notify_url", String.valueOf(p.get("NOTIFY_URL")));
//			packageParams.put("trade_type", trade_type);
//			// packageParams.put("product_id", product_id);
//
//			String sign = PayCommonUtil.createSign("UTF-8", packageParams, String.valueOf(p.get("API_KEY")));
//			packageParams.put("sign", sign);
//
//			String requestXML = PayCommonUtil.getRequestXml(packageParams);
//
//			System.out.println("requestXML:" + requestXML);
//			String resXml = HttpUtil.postData(String.valueOf(p.get("UFDODER_URL")), requestXML);
//			System.out.println("resXml:" + resXml);
//			Map map;
//			map = XMLUtil.doXMLParse(resXml);
//			String result_code = (String) map.get("result_code");// 返回状态码
//			System.out.println("result_code:" + result_code);
//			if ("SUCCESS".equals(result_code)) {
//				// 统一下单接口返回成功，获取二维码地址
//				String urlCode = (String) map.get("code_url");
//				String prepay_id = (String) map.get("prepay_id");// 预支付交易会话标识
//			}
//		} catch (Exception e) {
//
//		}
//	}

	public static void main(String[] args) {
        
	}
}
