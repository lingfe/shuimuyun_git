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


	@Override
	public void insertMessage(String total_fee,String xiaId,String out_trade_no,String body,String trade_type,String product_id,String order_no,String shopName) {
		zhiordertabMapper.insertMessage(total_fee,xiaId,out_trade_no,body,trade_type,product_id,order_no,shopName);
	}
	
	@Override
	public int selectExsit(String xiaId) {
		zhiordertabMapper.selectExsit(xiaId);
		return zhiordertabMapper.selectExsit(xiaId);
	}
	
	@Override
	public void updateorder(String total_fee,String xiaId,String out_trade_no,String body,String trade_type,String product_id,String order_no,String shopName) {
		zhiordertabMapper.updateorder(total_fee,xiaId,out_trade_no,body,trade_type,product_id,order_no,shopName);
	}
}
