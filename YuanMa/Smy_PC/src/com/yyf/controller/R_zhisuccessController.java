package com.yyf.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yyf.model.R_zhiordertab;
import com.yyf.service.R_zhisuccessService;

@Controller
@RequestMapping("/payselect")
public class R_zhisuccessController {
	public static Logger logger = Logger.getLogger(R_zhisuccessController.class);

	// 自动装配 
	@Autowired
	private R_zhisuccessService r_zhisuccessService;

	@RequestMapping(value = "/query", method = RequestMethod.GET)
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String xiaid = request.getParameter("xiaid");// 下单id
		
		String order_no = r_zhisuccessService.selectorder(xiaid);//取出订单付款状态
		
		
		PrintWriter out = response.getWriter();
		out.print(order_no);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
