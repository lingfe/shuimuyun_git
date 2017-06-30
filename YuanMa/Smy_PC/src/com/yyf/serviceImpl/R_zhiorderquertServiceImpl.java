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


	/**
	 * 
	 * 取订单信息
	 * @author 田浩
	 * @created 2017年6月17日 下午2:03:28  
	 * @param tab
	 */
	@Override
	public R_zhiordertab selectMessage(String xiaid) {
		R_zhiordertab zhi = zhiorderquertyMapper.SelectOrder(xiaid);
		return zhi;
	}
}
