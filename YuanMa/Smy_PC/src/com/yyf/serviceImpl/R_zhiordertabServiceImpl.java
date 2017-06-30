package com.yyf.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yyf.mapper.R_zhiordertabMapper;
import com.yyf.service.R_zhiordertabService;

@Service
public class R_zhiordertabServiceImpl implements R_zhiordertabService {

	// 自动装配，用户付款插入订单信息
	@Autowired
	private R_zhiordertabMapper zhiordertabMapper;

	/**
	 * 
	 * 插入订单信息
	 * @author 田浩
	 * @created 2017年6月17日 下午2:03:28  
	 * @param tab
	 */

	@Override
	public void insertMessage(String total_fee,String xiaId,String out_trade_no,String body,String trade_type,String product_id,String order_no,String shopName) {
		zhiordertabMapper.insertMessage(total_fee,xiaId,out_trade_no,body,trade_type,product_id,order_no,shopName);
	}
	
	/**
	 * 用户点击充值判断账户是否存在
	 * 
	 * @author 田浩
	 * @created 2017年6月17日 下午2:41:00
	 * @param 
	 *            
	 * @return order_no
	 */
	@Override
	public int selectExsit(String xiaId) {
		zhiordertabMapper.selectExsit(xiaId);
		return zhiordertabMapper.selectExsit(xiaId);
	}
	
	
	/**
	 * 增加用户充值记录
	 * @author 田浩
	 * @created 2017年6月17日 下午2:41:00
	 * @param 
	 *            
	 * @return order_no
	 */
	@Override
	public void updateorder(String total_fee,String xiaId,String out_trade_no,String body,String trade_type,String product_id,String order_no,String shopName) {
		zhiordertabMapper.updateorder(total_fee,xiaId,out_trade_no,body,trade_type,product_id,order_no,shopName);
	}
}
