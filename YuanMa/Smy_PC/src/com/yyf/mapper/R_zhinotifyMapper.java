package com.yyf.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

/**
 * 文件名：R_zhiordertabMapper.java 描述：取得订单信息   修改人： 田浩    修改时间：2017年6月17日 上午10:15:44
 * 修改内容：
 */
public interface R_zhinotifyMapper {

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
	 * @return 
	 */
	@Update("UPDATE order_table SET openid=#{openid},is_subscribe=#{is_subscribe},bank_type=#{bank_type},cash_fee=#{cash_fee}"
			+ ",nonce_str=#{nonce_str},result_code=#{result_code},return_code=#{return_code},sign=#{sign}"
			+ ",time_end=#{time_end},total_fee=#{total_fee}"
			+ " WHERE out_trade_no=#{out_trade_no}")
	public int UpdateOrder(@Param("openid") String openid,@Param("is_subscribe") String is_subscribe
			,@Param("out_trade_no") String out_trade_no
			,@Param("bank_type") String bank_type,@Param("cash_fee") String cash_fee
			,@Param("nonce_str") String nonce_str,@Param("result_code") String result_code
			,@Param("return_code") String return_code,@Param("sign") String sign
			,@Param("time_end") String time_end,@Param("total_fee") String total_fee
			);
}
