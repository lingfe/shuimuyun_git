package com.yyf.controller;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
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

import com.yyf.controller.util.PayCommonUtil;
import com.yyf.controller.util.XMLUtil;
import com.yyf.service.R_zhinotifyService;

@Controller
@RequestMapping("/shuimuyun")
public class R_NotifyController {
	
	//自动装配
	@Autowired
	private R_zhinotifyService r_zhinotifyService;

	@RequestMapping(value = "/zhifu" , method = RequestMethod.POST)
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 接收微信响应充值情况
		InputStream inputStream;
		StringBuffer sb = new StringBuffer();
		inputStream = request.getInputStream();
		String s;
		BufferedReader in = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
		while ((s = in.readLine()) != null) {
			sb.append(s);
		}
		
		in.close();
		inputStream.close();
		Map<String, String> m = new HashMap<String, String>();
		try {
			m = XMLUtil.doXMLParse(sb.toString());
		} catch (JDOMException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		SortedMap<Object, Object> packageParams = new TreeMap<Object, Object>();
		
		Iterator it = m.keySet().iterator();
		while (it.hasNext()) {
			String parameter = (String) it.next();
			String parameterValue = m.get(parameter);
			String v = "";
			if (null != parameterValue) {
				v = parameterValue.trim();
			}
			packageParams.put(parameter, v);
		}
		// 账号信息
		Properties p = new Properties();
		InputStream input = R_NotifyController.class.getResourceAsStream("/payConfig.properties");
		try {
			p.load(input);
			String key = String.valueOf(p.get("API_KEY")); // key
			System.out.println("key:"+key);
			// 判断签名是否正确
			if (PayCommonUtil.isTenpaySign("UTF-8", packageParams, key)) {
				// ------------------------------
				// 处理业务开始
				// ------------------------------
				String resXml = "";
				System.out.println("out_trade_no:"+packageParams.get("out_trade_no"));
				if ("SUCCESS".equals((String) packageParams.get("result_code"))) {
					// 支付成功 执行自己的业务逻辑
					String appid = (String) packageParams.get("appid");
					String mch_id = (String) packageParams.get("mch_id");
					String openid = (String) packageParams.get("openid");
					String is_subscribe = (String) packageParams.get("is_subscribe");
					String out_trade_no = (String) packageParams.get("out_trade_no");
					String bank_type = (String) packageParams.get("bank_type");
					String cash_fee = (String) packageParams.get("cash_fee");
					String nonce_str = (String) packageParams.get("nonce_str");
					String result_code = (String) packageParams.get("result_code");
					String return_code = (String) packageParams.get("return_code");
					String sign = (String) packageParams.get("sign");
					String time_end = (String) packageParams.get("time_end");
					String transaction_id = (String) packageParams.get("transaction_id");

					String total_fee = (String) packageParams.get("total_fee");

					r_zhinotifyService.UpdateOrder(openid, is_subscribe, out_trade_no, bank_type, cash_fee, nonce_str,
							result_code, return_code, sign, time_end, transaction_id, total_fee);// 保存数据库
					System.out.println("out_trade_no:"+out_trade_no);
					String xiaXid = r_zhinotifyService.SelectXIa(out_trade_no);// 获取xiaid

					System.out.println("xiaXid:"+xiaXid);
					
					r_zhinotifyService.UpdatePayment(xiaXid);//更改付款状态
					// 执行自己的业务逻辑
					System.out.println("修改成功");
					// 通知微信.异步确认成功.必写.不然会一直通知后台.八次之后就认为交易失败了.
					resXml = "<xml>" + "<return_code><![CDATA[SUCCESS]]></return_code>"
							+ "<return_msg><![CDATA[OK]]></return_msg>" + "</xml> ";

				} else {
					resXml = "<xml>" + "<return_code><![CDATA[FAIL]]></return_code>"
							+ "<return_msg><![CDATA[报文为空]]></return_msg>" + "</xml> ";
				}
				// 处理业务完毕
				BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
				out.write(resXml.getBytes());
				out.flush();
				out.close();
			} else {
				System.out.println("通知签名验证失败");
			}

		} catch (Exception e) {

		}
	}

	protected void doget(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}
}
