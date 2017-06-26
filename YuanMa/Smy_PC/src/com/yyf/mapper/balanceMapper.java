package com.yyf.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.yyf.model.Balancetab;

public interface balanceMapper {

	@Select("select * from balancetab where kuaikeId=#{kuaikeId}")
	public Balancetab queryBalance(@Param("kuaikeId") String kuaikeId);
	
	@Select("select * from balancetab where kuaikeId=#{kuaikeId}")
	public Balancetab querybalance(@Param("kuaikeId") String kuaikeId);
	
	
	
	/**
	 * 插入该快客id的账户
	 * @author 田浩
	 * @created 2017年6月26日 上午11:43:42  
	 * @param kuaikeId 快客ID
	 * @return
	 */
	@Insert("insert into balancetab(balanceId,kuaikeId,zhifupwd,balance) values(#{out_trade_no},#{kuaikeId},123456,0)")
	public void insertBalance(@Param("kuaikeId") String kuaikeId,@Param("out_trade_no") String out_trade_no);
	
	
	/**
	 * 充值余额成功修改数据库
	 * @author 田浩     
	 * @created 2017年6月26日 下午13:39:28
	 * @param balance 余额
	 * @param kuaikeId
	 * @return 
	 */
	@Update("update balancetab set balance=#{total_fee},paystatus=2 where balanceId=#{out_trade_no}")
	public void updateBalance(@Param("out_trade_no") String out_trade_no,@Param("total_fee") String total_fee);
	
	/**
	 * 修改充值状态为充值中
	 * @author 田浩     
	 * @created 2017年6月26日 下午13:39:28
	 * @param balance 余额
	 * @param kuaikeId
	 * @return 
	 */
	@Update("update balancetab set paystatus=1,balanceId=#{out_trade_no} where kuaikeId=#{kuaikeId}")
	public void updatePayStatus(@Param("kuaikeId") String kuaikeId ,@Param("out_trade_no") String out_trade_no);
	
	/**
	 * 根据快客Id查询有没有该快客帐号
	 * @author 田浩
	 * @created 2017年6月26日 上午11:43:42  
	 * @param kuaikeId 快客ID
	 * @return
	 */
	@Select("select paystatus from balancetab where kuaikeId=#{kuaikeId}")
	public String selectresult(@Param("kuaikeId") String kuaikeId);

}
