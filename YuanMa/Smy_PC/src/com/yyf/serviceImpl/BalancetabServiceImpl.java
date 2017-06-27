package com.yyf.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yyf.mapper.IBalanceMapper;
import com.yyf.model.Balancetab;
import com.yyf.service.BalancetabService;

@Service
public class BalancetabServiceImpl implements BalancetabService {

	// 自动装配	账户信息
	@Autowired
	private IBalanceMapper iBalanceMapper;
	
	@Override
	public void insertBalance(String kuaikeId, String out_trade_no) {
		iBalanceMapper.insertBalance(kuaikeId, out_trade_no);
	}
	
	/**
	 * 根据快客Id得到账户余额
	 * @author 杨杰     
	 * @created 2017年6月21日 下午2:47:19  
	 * @param kuaikeId
	 * @return
	 */
	@Override
	public Balancetab queryBalance(String kuaikeId) {
		
		Balancetab queryBalance = iBalanceMapper.queryBalance(kuaikeId);
		
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
		
		iBalanceMapper.updateBalance(balance, kuaikeId,zhifupwd);
		
	}


	/**
	 * @author 杨杰     
	 * @created 2017年6月22日 上午11:36:18  
	 * @return
	 */
	@Override
	public List<Balancetab> queryallbalance() {
		List<Balancetab> queryallbalance = iBalanceMapper.queryallbalance();
		return queryallbalance;
	}
 
	
	/**
	 * @author 田浩  
	 * @created 2017年6月26日 上午11:36:18  
	 * @return
	 */
	@Override
	public void updateBalance(String out_trade_no,String total_fee) {
		iBalanceMapper.updateBalance(out_trade_no,total_fee);
	}
	
	/**
	 * @author 田浩  
	 * @created 2017年6月26日 上午11:36:18  
	 * @return
	 */
	@Override
	public void updatePayStatus(String kuaikeId,String out_trade_no) {
		iBalanceMapper.updatePayStatus(kuaikeId ,out_trade_no);
	}
	
	/**
	 * @author 田浩  
	 * @created 2017年6月26日 上午11:36:18  
	 * @return
	 */
	@Override
	public String selectresult(String kuaikeId) {
		String b = iBalanceMapper.selectresult(kuaikeId);
		return b;
	}
}
