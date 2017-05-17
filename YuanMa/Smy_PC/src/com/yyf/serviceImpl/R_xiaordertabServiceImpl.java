package com.yyf.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.yyf.mapper.IR_xiaordertabMapper;
import com.yyf.model.R_xiaordertab;
import com.yyf.service.R_xiaordertabService;

public class R_xiaordertabServiceImpl implements R_xiaordertabService {

	//自动装配
	@Autowired
	private IR_xiaordertabMapper ir_xiaordertabMapper;
	
	@Override
	public void add(R_xiaordertab tab) {
		ir_xiaordertabMapper.add(tab);
	}

	@Override
	public List<R_xiaordertab> query() {
		return ir_xiaordertabMapper.query();
	}

	@Override
	public int queryCount() {
		return ir_xiaordertabMapper.queryCount();
	}

}
