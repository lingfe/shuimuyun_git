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

	/**
	 * 
	 * 取得订单支付状态
	 * @author 田浩
	 * @created 2017年6月17日 下午2:03:28  
	 * @param tab
	 */
	@Override
	public String selectresult(String xiaId) {
		String order_no = String.valueOf(zhisuccessMapper.selectresult(xiaId));
		return order_no;
	}
}
