package com.yyf.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yyf.mapper.R_zhisuccessMapper;
import com.yyf.model.R_zhiordertab;
import com.yyf.service.R_zhiorderqueryService;
import com.yyf.service.R_zhisuccessService;

/**
 * 
 * 文件名： R_zhiordertabServiceImpl.java 描述： 下单交互实现类 修改人： tianhao 修改时间： 2017年6月17日
 *  修改内容：
 */
@Service
public class R_zhisuccessServiceImpl implements R_zhisuccessService {

	// 自动装配，
	@Autowired
	private R_zhisuccessMapper zhisuccessMapper;

	@Override
	public String selectorder(String xiaid) {
		String order_no = String.valueOf(zhisuccessMapper.selectorder(xiaid));
		return order_no;
	}
}
