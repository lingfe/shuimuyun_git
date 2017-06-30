package com.yyf.service;

public interface R_zhiordertabService {
	
	/**
	 * 
	 * 插入订单信息
	 * @author 田浩
	 * @created 2017年6月17日 下午2:03:28  
	 * @param tab
	 */
	void insertMessage(String total_fee,String xiaId,String out_trade_no,String body,String trade_type,String product_id,String order_no,String shopName);

	/**
	 * 用户点击充值判断账户是否存在
	 * 
	 * @author 田浩
	 * @created 2017年6月17日 下午2:41:00
	 * @param 
	 *            
	 * @return order_no
	 */
	int selectExsit(String xiaId);
	
	
	/**
	 * 增加用户充值记录
	 * @author 田浩
	 * @created 2017年6月17日 下午2:41:00
	 * @param 
	 *            
	 * @return order_no
	 */
	void updateorder(String total_fee,String xiaId,String out_trade_no,String body,String trade_type,String product_id,String order_no,String shopName);
}
