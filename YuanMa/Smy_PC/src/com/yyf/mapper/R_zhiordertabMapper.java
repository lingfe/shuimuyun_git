package com.yyf.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

/**
 * 文件名：R_zhiordertabMapper.java 描述：取得订单信息   修改人： 田浩    修改时间：2017年6月17日 上午10:15:44
 * 修改内容：
 */
public interface R_zhiordertabMapper {
	/**
	 * 用户支付之后创建订单
	 * 
	 * @author 田浩
	 * @created 2017年6月17日 下午2:41:00
	 * @param 
	 *            
	 * @return order_no
	 */
	@Insert("insert into order_table(total_fee,xiaId,out_trade_no,body,trade_type,product_id,order_no,shopName) values(#{total_fee},#{xiaId},#{out_trade_no},#{body},#{trade_type},#{product_id},#{order_no},#{shopName})")
	public int insertMessage(@Param("total_fee") String total_fee,@Param("xiaId") String xiaId
			,@Param("out_trade_no") String out_trade_no,@Param("body") String body
			,@Param("trade_type") String trade_type,@Param("product_id") String product_id,@Param("order_no") String order_no,@Param("shopName") String shopName);

	
	@Select("select count(*) from order_table where xiaId=#{xiaId}")
	public int selectExsit(@Param("xiaId") String xiaId);
	
	
	@Update("UPDATE order_table SET total_fee=#{total_fee},out_trade_no=#{out_trade_no},body=#{body},trade_type=#{trade_type}"
			+ ",product_id=#{product_id},order_no=#{order_no},shopName=#{shopName}"
			+ " WHERE xiaId=#{xiaId}")
	public void updateorder(@Param("total_fee") String total_fee,@Param("xiaId") String xiaId
			,@Param("out_trade_no") String out_trade_no,@Param("body") String body
			,@Param("trade_type") String trade_type,@Param("product_id") String product_id,@Param("order_no") String order_no,@Param("shopName") String shopName);

}
