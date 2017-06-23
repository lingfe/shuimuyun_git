package com.yyf.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yyf.service.R_zhisuccessService;

@Controller
@RequestMapping("/payselect")
public class R_zhisuccessController {

	// 自动装配      页面自动刷新获取支付情况
	@Autowired
	private R_zhisuccessService r_zhisuccessService;

	@RequestMapping(value = "/query", method = RequestMethod.POST)
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String xiaId = request.getParameter("xiaid");// 下单id
		String order_no = r_zhisuccessService.selectresult(xiaId);//取出订单付款状态
		
		
		PrintWriter out = response.getWriter();
		out.print(order_no);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
