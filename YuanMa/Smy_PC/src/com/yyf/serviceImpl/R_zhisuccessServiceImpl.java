package com.yyf.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yyf.mapper.R_zhisuccessMapper;
import com.yyf.service.R_zhisuccessService;

@Service
public class R_zhisuccessServiceImpl implements R_zhisuccessService {

	// 自动装配，取订单支付状态
	@Autowired
	private R_zhisuccessMapper zhisuccessMapper;

	@Override
	public String selectresult(String xiaid) {
		String order_no = String.valueOf(zhisuccessMapper.selectresult(xiaid));
		return order_no;
	}
}
