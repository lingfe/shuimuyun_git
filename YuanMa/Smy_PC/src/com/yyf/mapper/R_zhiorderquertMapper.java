package com.yyf.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.yyf.model.R_zhiordertab;

public interface R_zhiorderquertMapper {
	
	/**
	 * 查询订单信息
	 * 
	 * @author 田浩
	 * @created 2017年6月17日 下午2:41:00
	 * @param 
	 *            
	 * @return 
	 */
	@Select(value="SELECT * "	
			+ " FROM order_table "
			+ " WHERE xiaId=#{xiaid}")
	public R_zhiordertab SelectOrder(@Param("xiaid") String xiaid);
}
