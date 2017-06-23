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

	int selectExsit(String xiaId);
	
	void updateorder(String total_fee,String xiaId,String out_trade_no,String body,String trade_type,String product_id,String order_no,String shopName);
}
