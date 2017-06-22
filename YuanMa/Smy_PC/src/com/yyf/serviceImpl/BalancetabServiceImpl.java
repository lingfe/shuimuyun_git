package com.yyf.serviceImpl;

import java.util.List;

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
 
}
