package com.yyf.service;

import com.yyf.model.Balancetab;

public interface balanceService {
	public Balancetab queryBalance(String kuaikeId);
	
public void insertBalance(String kuaikeId,String out_trade_no);
	
	/**
	 * @author 田浩     
	 * @created 2017年6月26日 上午11:35:45  
	 * @return
	 */
	
	public void updateBalance(String out_trade_no,String total_fee);
	
	
	/**
	 * @author 田浩     
	 * @created 2017年6月26日 上午11:35:45  
	 * @return
	 */
	
	public void updatePayStatus(String kuaikeId,String out_trade_no);
	
	/**
	 * @author 田浩     
	 * @created 2017年6月26日 上午11:35:45  
	 * @return
	 */
	
	public String selectresult(String kuaikeId);

}
