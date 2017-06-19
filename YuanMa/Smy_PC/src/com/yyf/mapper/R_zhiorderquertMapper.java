package com.yyf.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.yyf.model.R_xiaordertab;
import com.yyf.model.R_zhiordertab;

/**
 * 文件名：R_zhiordertabMapper.java 描述：取得订单信息   修改人： 田浩    修改时间：2017年6月17日 上午10:15:44
 * 修改内容：
 */
public interface R_zhiorderquertMapper {
	
	/**
	 * 用户支付之后创建订单
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
