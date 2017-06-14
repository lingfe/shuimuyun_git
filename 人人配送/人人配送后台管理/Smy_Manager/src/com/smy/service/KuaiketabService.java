package com.smy.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.smy.mapper.KuaiketabMapper;
import com.smy.model.Kuaiketab;

@Service
public class KuaiketabService {
	
	@Autowired
	private KuaiketabMapper kuaiketabMapper;


	// 计算快客总条数
	@Transactional
	public Integer getCount() {
		return kuaiketabMapper.getCount();
	}

	// 分页查询快客
	@Transactional
	public List<Kuaiketab> queryPagekuaike(@Param("PageNo") Integer PageNo, @Param("PageSize") Integer PageSize) {
		return kuaiketabMapper.queryPagekuaike(PageNo, PageSize);
	}
	
	//根据快客Id对前端申请的快客进行审核 通过修改状态
	public void updateKuaikeStatus(@Param("kuaikeStatus") int kuaikeStatus,@Param("kuaikeId") String kuaikeId){
		kuaiketabMapper.updateKuaikeStatus(kuaikeStatus,kuaikeId);
	}

}
