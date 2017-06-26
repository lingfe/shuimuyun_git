package com.yyf.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
	
	
	/**
	 * 通过余额付款
	 * @author 杨杰     
	 * @created 2017年6月21日 下午9:39:28
	 * @param balance 余额
	 * @param xiaId 下单Id
	 * @return 
	 */
	@Override
	public void updateBalance(double balance,String kuaikeId,String zhifupwd){
		
		balancetabMapper.updateBalance(balance, kuaikeId,zhifupwd);
		
	}


	/**
	 * @author 杨杰     
	 * @created 2017年6月22日 上午11:36:18  
	 * @return
	 */
	@Override
	public List<Balancetab> queryallbalance() {
		List<Balancetab> queryallbalance = balancetabMapper.queryallbalance();
		return queryallbalance;
	}


	/**
	 * @author 田浩  
	 * @created 2017年6月26日 上午11:36:18  
	 * @return
	 */

	@Override
	public void insertBalance(String kuaikeId,String balanceId) {
		balancetabMapper.insertBalance(kuaikeId,balanceId);
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
