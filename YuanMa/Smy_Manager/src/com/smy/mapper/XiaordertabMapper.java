package com.smy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.smy.model.Xiaordertab;

public interface XiaordertabMapper {
	/**
	 * 分页查询所有的下单信息
	 * @param PageNo 某一页
	 * @param PageSize  一页大小
	 * @return
	 */
	@Select("SELECT * FROM xiaordertab LIMIT #{PageNo},#{PageSize}")
	public List<Xiaordertab> queryXiaOrder(@Param("PageNo")Integer PageNo,@Param("PageSize")Integer PageSize);

	/**
	 * 得到下单信息总条数
	 * @return
	 */
	@Select("select count(*) from xiaordertab")
	public int queryCount(); 
}
