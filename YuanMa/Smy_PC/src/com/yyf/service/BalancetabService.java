package com.yyf.service;

import java.util.List;

import com.yyf.model.Balancetab;

/**
  * 文件名：BalancetabService.java
  * 描述： 余额操作
  * 修改人： 杨杰
  * 修改时间：2017年6月21日 下午2:45:44
  * 修改内容：
 */
public interface BalancetabService {

	/**
	 * 根据快客iD 得到账户余额
	 * @author 杨杰     
	 * @created 2017年6月21日 下午2:46:05  
	 * @param kuaikeId
	 * @return
	 */
	public Balancetab queryBalance(String kuaikeId);
	
	
	/**
	 * 通过余额付款
	 * @author 杨杰     
	 * @created 2017年6月21日 下午9:39:28
	 * @param balance 余额
	 * @param xiaId 下单Id
	 * @return 
	 */
	public void updateBalance(double balance,String kuaikeId,String zhifupwd);
	
	/**
	 * @author 杨杰     
	 * @created 2017年6月22日 上午11:35:45  
	 * @return
	 */
	public List<Balancetab> queryallbalance();


	/**
	 * 插入该快客id的账户
	 * @author 田浩
	 * @created 2017年6月26日 上午11:43:42  
	 * @param kuaikeId 快客ID
	 * @return
	 */
	void insertBalance(String kuaikeId, String out_trade_no);
	
	
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
