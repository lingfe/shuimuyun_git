package com.yyf.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yyf.mapper.balanceMapper;
import com.yyf.model.Balancetab;
import com.yyf.service.balanceService;

@Service
public class balanceServiceImpl implements balanceService {

	@Autowired
	private balanceMapper balancetabMapper;
	
	@Override
	public Balancetab queryBalance(String kuaikeId) {
		
		Balancetab queryBalance = balancetabMapper.queryBalance(kuaikeId);
		
		return queryBalance;
	}
	
	
	@Override
	public void insertBalance(String kuaikeId,String out_trade_no) {
		balancetabMapper.insertBalance(kuaikeId,out_trade_no);
	}
 
	
	/**
	 * @author 田浩  
	 * @created 2017年6月26日 上午11:36:18  
	 * @return
	 */

	@Override
	public void updateBalance(String out_trade_no,String total_fee) {
		balancetabMapper.updateBalance(out_trade_no,total_fee);
	}
	
	/**
	 * @author 田浩  
	 * @created 2017年6月26日 上午11:36:18  
	 * @return
	 */

	@Transactional
	@Override
	public void updatePayStatus(String kuaikeId,String out_trade_no) {
		balancetabMapper.updatePayStatus(kuaikeId ,out_trade_no);
	}
	
	/**
	 * @author 田浩  
	 * @created 2017年6月26日 上午11:36:18  
	 * @return
	 */

	@Override
	public String selectresult(String kuaikeId) {
		String b = balancetabMapper.selectresult(kuaikeId);
		return b;
	}
}
