package com.smy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.smy.model.Purview_Info;

public interface PurviewInfoMapper {

	
	@Select("select * from purview_info")
	public List<Purview_Info> queryAll();
	
}
