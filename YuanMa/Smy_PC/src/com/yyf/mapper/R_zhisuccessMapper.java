package com.yyf.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * 文件名：R_zhiordertabMapper.java 描述：取得订单信息   修改人： 田浩    修改时间：2017年6月17日 上午10:15:44
 * 修改内容：
 */
public interface R_zhisuccessMapper {

	/**
	 * 用户支付之后创建订单
	 * 
	 * @author 田浩
	 * @created 2017年6月17日 下午2:41:00
	 * @param 
	 *            
	 * @return 
	 */
	@Select(value="SELECT payresult "	
			+ " FROM order_table "
			+ " WHERE xiaId=#{xiaid}")
	public String selectorder(@Param("xiaid") String xiaid);
}
