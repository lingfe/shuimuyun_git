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
	private IBalanceMapper balanceMapper;
	
	@Override
	public void insert(String kuaikeId, String out_trade_no,String zhifupwd) {
		balanceMapper.insert(kuaikeId, out_trade_no,zhifupwd);
	}
	
	/**
	 * 根据快客Id得到账户余额
	 * @author 杨杰     
	 * @created 2017年6月21日 下午2:47:19  
	 * @param kuaikeId
	 * @return
	 */
	@Override
	public Balancetab queryKuaikeId(String kuaikeId) {
		
		Balancetab queryBalance = balanceMapper.queryKuaikeId(kuaikeId);
		
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
	public void updateBalance1(double balance,String kuaikeId,String zhifupwd){
		
		balanceMapper.updateBalance1(balance,kuaikeId,zhifupwd);
		
	}


	/**
	 * @author 杨杰     
	 * @created 2017年6月22日 上午11:36:18  
	 * @return
	 */
	@Override
	public List<Balancetab> queryallbalance() {
		List<Balancetab> queryallbalance = balanceMapper.queryallbalance();
		return queryallbalance;
	}
 
	
	/**
	 * @author 田浩  
	 * @created 2017年6月26日 上午11:36:18  
	 * @return
	 */
	@Override
	public void updateBalance(String out_trade_no,double total_fee) {
		balanceMapper.updateBalance(out_trade_no,total_fee);
	}
	
	/**
	 * @author 田浩  
	 * @created 2017年6月26日 上午11:36:18  
	 * @return
	 */
	@Override
	public void setKuaikeIdStatus(String kuaikeId,String out_trade_no) {
		balanceMapper.setKuaikeIdStatus(kuaikeId ,out_trade_no);
	}
	
	/**
	 * @author 田浩  
	 * @created 2017年6月26日 上午11:36:18  
	 * @return
	 */
	@Override
	public String selectresult(String kuaikeId) {
		String b = balanceMapper.selectresult(kuaikeId);
		return b;
	}
	
	/**
	 * @author 田浩  
	 * @created 2017年6月26日 上午11:36:18  
	 * @return
	 */
	@Override
	public Balancetab selectfigure(String balanceId) {
		System.out.println("444");
		Balancetab balance = balanceMapper.selectfigure(balanceId);
		return balance;
	}
	
	/**
	 * @author 田浩  
	 * @created 2017年6月26日 上午11:36:18  
	 * @return
	 */
	@Override
	public void setstatus(String out_trade_no) {
		balanceMapper.setstatus(out_trade_no);
	}
	
	/**
	 * @author 田浩  
	 * @created 2017年6月26日 上午11:36:18  
	 * @return
	 */
	@Override
	public String selectdeposit(String kuaikeId) {
		String b = balanceMapper.selectdeposit(kuaikeId);
		return b;
	}

	/**
	 * 根据快客Id和旧支付密码修改支付密码
	 * @author 杨杰     
	 * @created 2017年6月28日 下午4:51:48  
	 * @param newzhifupwd 新支付密码
	 * @param kuaikeId  快客Id
	 * @param zhiufpwd  旧支付密码
	 * @return
	 */
	@Override
	public boolean updateZhifupwd(String newzhifupwd, String kuaikeId, String zhifupwd) {
		
		boolean updateZhifupwd = balanceMapper.updateZhifupwd(newzhifupwd, kuaikeId, zhifupwd);
		
		if(updateZhifupwd){
			
			return true;
		}
		
		return false;
		
	}
	
}
