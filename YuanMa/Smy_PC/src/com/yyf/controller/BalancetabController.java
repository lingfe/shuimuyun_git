package com.yyf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yyf.model.Balancetab;
import com.yyf.service.BalancetabService;
import com.yyf.service.R_xiaordertabService;

@Controller
public class BalancetabController {

	@Autowired
	private BalancetabService balancetabService;
	
	//下单注入
	@Autowired
	private R_xiaordertabService xiaordertabService;
	
	
	/**
	 * 根据快客ID获取到个人账户的余额
	 * 
	 * @author 杨杰
	 * @created 2017年6月21日 下午4:02:43
	 * @param model
	 * @param kuaikeId
	 * @return 一个实体对象 解析为json数据格式
	 */
	@RequestMapping(value = "/queryBalance/{kuaikeId}", method = RequestMethod.POST)
	@ResponseBody
	public Balancetab queryBalance(ModelMap model, @PathVariable("kuaikeId") String kuaikeId) {

		Balancetab queryBalance = balancetabService.queryKuaikeId(kuaikeId);
		
		
		System.out.println("*********************************");
		
		if(!StringUtils.isEmpty(queryBalance)){
			
			return queryBalance;
		}else{

			return null;
		}
	}

	/**
	 * 通过余额付款
	 * 
	 * @author 杨杰
	 * @created 2017年6月21日 下午9:39:28
	 * @param balance
	 *            余额
	 * @param xiaId
	 *            下单Id
	 * @return
	 */
	@RequestMapping(value = "/updateBalance/{balance}/{kuaikeId}/{zhifupwd}/{xiaId}", method = RequestMethod.POST)
	@ResponseBody
	public void updateBalance(@PathVariable("balance") double balance, @PathVariable("kuaikeId") String kuaikeId,
			@PathVariable("zhifupwd") String zhifupwd,@PathVariable("xiaId") String xiaId) {
			Balancetab queryBalance1 = balancetabService.queryKuaikeId(kuaikeId);
		
			if(queryBalance1.getBalance()>balance){
				
				balancetabService.updateBalance(balance, kuaikeId, zhifupwd);
				
				
			}
			else {
				xiaordertabService.updatePayment(0,xiaId);
			
			}
			
	
	}

}
