package com.yyf.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yyf.mapper.IR_xiaordertabMapper;
import com.yyf.model.R_xiaordertab;
import com.yyf.service.R_xiaordertabService;
/**
 * 
  * 文件名：	R_xiaordertabServiceImpl.java
  * 描述： 	下单交互实现类
  * 修改人：	lijie
  * 修改时间：	2017年5月18日 上午9:22:53
  * 修改内容：
 */
@Service
public class R_xiaordertabServiceImpl implements R_xiaordertabService {

	//自动装配
	@Autowired
	private IR_xiaordertabMapper ir_xiaordertabMapper;
	
	@Override
	public R_xiaordertab xiaorderInfo(String xiaId) {
		return ir_xiaordertabMapper.xiaorderInfo(xiaId);
	}
	
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

	@Override
	public void delete(String xiaId) {
		ir_xiaordertabMapper.delete(xiaId);
	}

	@Override
	public void updateStatus(int status, String xiaId) {
		ir_xiaordertabMapper.updateStatus(status, xiaId);
	}

}
