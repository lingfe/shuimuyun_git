package com.yyf.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yyf.mapper.R_zhiorderquertMapper;
import com.yyf.model.R_zhiordertab;
import com.yyf.service.R_zhiorderqueryService;

@Service
public class R_zhiorderquertServiceImpl implements R_zhiorderqueryService {

	// 自动装配，取得订单信息
	@Autowired
	private R_zhiorderquertMapper zhiorderquertyMapper;



	@Override
	public R_zhiordertab selectMessage(String xiaid) {
		R_zhiordertab zhi = zhiorderquertyMapper.SelectOrder(xiaid);
		return zhi;
	}
}
