package com.smy.service;

import java.util.List;

import javax.transaction.Transactional;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smy.mapper.XiaordertabMapper;
import com.smy.model.Xiaordertab;

/**
 * 下单管理类
 * @author YangJie
 *
 */
@Service
public class XiaordertabService {
	@Autowired
	private XiaordertabMapper xiaordertabMapper;
	
	/**
	 *分页查询所有的下单信息
	 * @param PageNo 某一页
	 * @param PageSize  页显示条数大小
	 * @return
	 */
	@Transactional
	public List<Xiaordertab> queryXiaOrder(@Param("PageNo") int PageNo,@Param("PageSize") int PageSize){
		
		List<Xiaordertab> orderList = xiaordertabMapper.queryXiaOrder(PageNo, PageSize);
		
		return orderList;
	}

	public int queryCount() {
		int count=xiaordertabMapper.queryCount();
		return count;
	}
	
}
