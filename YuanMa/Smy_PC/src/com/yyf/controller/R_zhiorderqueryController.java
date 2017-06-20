package com.yyf.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yyf.model.R_zhiordertab;
import com.yyf.service.R_zhiorderqueryService;

@Controller
@RequestMapping("/orderselect")
public class R_zhiorderqueryController {
	public static Logger logger = Logger.getLogger(R_zhiorderqueryController.class);

	// 支付成功查询数据、跳转页面
	@Autowired
	private R_zhiorderqueryService r_zhiorderquertService;

	@RequestMapping(value = "/query/{xiaid}", method = RequestMethod.GET)
	protected String doGet(HttpServletRequest request, HttpServletResponse response,ModelMap model,@PathVariable("xiaid") String xiaId)
			throws ServletException, IOException {
		logger.info( "xiaId:" + xiaId);
		R_zhiordertab r_zhiordertab = r_zhiorderquertService.selectMessage(xiaId);//取出总订单号
		model.addAttribute("r_zhiordertab", r_zhiordertab);
		return "PC/paySeccess";
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response,ModelMap model, String xiaId)
			throws ServletException, IOException {
		doGet(request, response,model,xiaId);
	}
}
