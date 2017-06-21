package com.yyf.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yyf.mapper.R_balancetabMapper;
import com.yyf.model.Balancetab;
import com.yyf.service.BalancetabService;

@Service
public class BalancetabServiceImpl implements BalancetabService {

	@Autowired
	private R_balancetabMapper balancetabMapper;
	
	/**
	 * 根据快客Id得到账户余额
	 * @author 杨杰     
	 * @created 2017年6月21日 下午2:47:19  
	 * @param kuaikeId
	 * @return
	 */
	@Override
	public Balancetab queryBalance(String kuaikeId) {
		
		Balancetab queryBalance = balancetabMapper.queryBalance(kuaikeId);
		
		return queryBalance;
	}
 
}
