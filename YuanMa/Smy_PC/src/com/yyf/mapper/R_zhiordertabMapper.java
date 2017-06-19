package com.yyf.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

/**
 * 文件名：R_zhiordertabMapper.java 描述：取得订单信息   修改人： 田浩    修改时间：2017年6月17日 上午10:15:44
 * 修改内容：
 */
public interface R_zhiordertabMapper {

//	/**
//	 * 根据订单号取得订单信息
//	 * @author tianhao
//	 * @created 2017年6月17日 上午10:09:05
//	 * @param 
//	 * return 支付接口需要的信息
//	 */
//	@Select(value="SELECT xi.* "	
//			+ " FROM qiangordertab q INNER JOIN xiaordertab xi ON q.`xiaId`=xi.`xiaId` "
//			+ " WHERE q.kuaikeId=#{kuaikeId} AND q.status=#{status}  AND q.xiaId=#{xiaId}")
//	public R_zhiordertab queryMessage(@Param("kuaikeId") String kuaikeId,@Param("status")int status,@Param("xiaId")String xiaId);
	
	
	/**
	 * 用户支付之后创建订单
	 * 
	 * @author 田浩
	 * @created 2017年6月17日 下午2:41:00
	 * @param 
	 *            
	 * @return order_no
	 */
	@Insert("insert into order_table(total_fee,xiaId,out_trade_no,body,trade_type,product_id,order_no) values(#{total_fee},#{xiaId},#{out_trade_no},#{body},#{trade_type},#{product_id},#{order_no})")
	public int insertMessage(@Param("total_fee") String total_fee,@Param("xiaId") String xiaId
			,@Param("out_trade_no") String out_trade_no,@Param("body") String body
			,@Param("trade_type") String trade_type,@Param("product_id") String product_id,@Param("order_no") String order_no);

}
