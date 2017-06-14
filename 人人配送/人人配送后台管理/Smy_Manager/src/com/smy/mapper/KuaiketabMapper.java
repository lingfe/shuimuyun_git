package com.smy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.smy.model.Kuaiketab;

public interface KuaiketabMapper {
	
	//计算总条数
	@Select("SELECT count(*) FROM Kuaiketab")
	public Integer getCount();
	
	
	//分页查询管理员
	@Select("SELECT * FROM Kuaiketab LIMIT #{PageNo},#{PageSize}")
	public List<Kuaiketab> queryPagekuaike(@Param("PageNo")Integer PageNo,@Param("PageSize")Integer PageSize);
	
	
	/**
	 * 后台对前端申请的快客信息进行审核 
	 * @param kuaikeId 快客Id
	 */
	@Select("update Kuaiketab set kuaikeStatus=#{kuaikeStatus} where kuaikeId=#{kuaikeId}")
	public void updateKuaikeStatus(@Param("kuaikeStatus") int kuaikeStatus,@Param("kuaikeId") String kuaikeId);
	
	
	
	
}
