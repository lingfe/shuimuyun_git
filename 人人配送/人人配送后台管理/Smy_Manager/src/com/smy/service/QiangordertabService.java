package com.smy.service;

import java.util.List;

import javax.transaction.Transactional;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smy.mapper.QiangordertabMapper;
import com.smy.model.Qiangordertab;

@Service
public class QiangordertabService {
	@Autowired
	private QiangordertabMapper qiangordertabMapper;

	@Transactional
	public List<Qiangordertab> queryQiangorder(@Param("PageNo") int PageNo,@Param("PageSize") int PageSize) {

		List<Qiangordertab> qiangorderList = qiangordertabMapper.queryQiangorder(PageNo,PageSize);

		return qiangorderList;
	}

	public int queryCount() {
		int count=qiangordertabMapper.queryCount();
		return count;
	}
}
