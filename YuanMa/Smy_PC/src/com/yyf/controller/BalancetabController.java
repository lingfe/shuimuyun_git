package com.yyf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yyf.model.Balancetab;
import com.yyf.service.BalancetabService;

@Controller
public class BalancetabController {

	@Autowired
	private BalancetabService balancetabService;

	/**
	 * 根据快客ID获取到个人账户的余额
	 * @author 杨杰     
	 * @created 2017年6月21日 下午4:02:43  
	 * @param model
	 * @param kuaikeId
	 * @return  一个实体对象  解析为json数据格式
	 */
	@RequestMapping(value = "/queryBalance/{kuaikeId}", method = RequestMethod.POST)
	@ResponseBody
	public Balancetab queryBalance(ModelMap model, @PathVariable("kuaikeId") String kuaikeId) {

		Balancetab queryBalance = balancetabService.queryBalance(kuaikeId);

		model.addAttribute("qBalance", queryBalance);

		return queryBalance;

	}

}
