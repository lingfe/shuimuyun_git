package com.yyf.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface R_zhisuccessMapper {

	/**
	 * 查询用户支付状态
	 * 
	 * @author 田浩
	 * @created 2017年6月17日 下午2:41:00
	 * @param 
	 *            
	 * @return 
	 */
	@Select(value="SELECT payresult "	
			+ " FROM order_table "
			+ " WHERE xiaId=#{xiaId}")
	public String selectresult(@Param("xiaId") String xiaId);
}
