package com.yyf.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.yyf.model.Balancetab;

/**
 * 文件名：BalancetabMapper.java
 * 描述： 余额支付操作类
 * 修改人： 杨杰
 * 修改时间：2017年6月21日 上午11:18:00
 * 修改内容：
*/
public interface IBalanceMapper {


	
	/**
	 * 根据快客Id查询个人账户余额
	 * @author 杨杰     
	 * @created 2017年6月21日 下午2:43:42  
	 * @param kuaikeId 快客ID
	 * @return
	 */
	@Select("select * from balancetab where kuaikeId=#{kuaikeId}")
	Balancetab queryKuaikeId(@Param("kuaikeId") String kuaikeId);
	
	/**
	 * 通过余额付款
	 * @author 杨杰     
	 * @created 2017年6月21日 下午9:39:28
	 * @param balance 余额
	 * @param xiaId 下单Id
	 * @return 
	 */
	@Update("update balancetab set balance=#{balance} where kuaikeId=#{kuaikeId} and zhifupwd=#{zhifupwd}")
	public void updateBalance1(@Param("balance") double balance,@Param("kuaikeId") String kuaikeId,@Param("zhifupwd") String zhifupwd);
	
	
	
	/**
	 * 得到所有的账户信息
	 * @author 杨杰     
	 * @created 2017年6月22日 上午11:34:58  
	 * @return
	 */
	@Select("select * from balancetab")
	public List<Balancetab> queryallbalance();
	
	/**
	 * 根据快客Id查询有没有该快客帐号
	 * @author 田浩
	 * @created 2017年6月26日 上午11:43:42  
	 * @param kuaikeId 快客ID
	 * @return
	 */
	@Select("select * from balancetab where kuaikeId=#{kuaikeId}")
	public Balancetab querybalance(@Param("kuaikeId") String kuaikeId);
	
	
	/**
	 * 插入该快客id的账户
	 * @author 田浩
	 * @created 2017年6月26日 上午11:43:42  
	 * @param kuaikeId 快客ID
	 * @return
	 */
	@Insert("insert into balancetab(balanceId,kuaikeId,zhifupwd,balance,deposit,status,paystatus) values(#{out_trade_no},#{kuaikeId},'e10adc3949ba59abbe56e057f20f883e',0.0,0.0,0,0)")
	void insert(@Param("kuaikeId") String kuaikeId,@Param("out_trade_no") String out_trade_no);
	
	
	/**
	 * 充值余额成功修改数据库
	 * @author 田浩     
	 * @created 2017年6月26日 下午13:39:28
	 * @param balance 余额
	 * @param kuaikeId
	 * @return 
	 */
	@Update("update balancetab set balance=#{total_fee},paystatus=2 where balanceId=#{out_trade_no}")
	public void updateBalance(@Param("out_trade_no") String out_trade_no,@Param("total_fee") double total_fee);
	
	/**
	 * 修改充值状态为充值中
	 * @author 田浩     
	 * @created 2017年6月26日 下午13:39:28
	 * @param balance 余额
	 * @param kuaikeId
	 * @return 
	 */
	@Update("update balancetab set paystatus=1,balanceId=#{out_trade_no} where kuaikeId=#{kuaikeId}")
	public void setKuaikeIdStatus(@Param("kuaikeId") String kuaikeId ,@Param("out_trade_no") String out_trade_no);
	
	/**
	 * 根据快客Id查询有没有该快客帐号
	 * @author 田浩
	 * @created 2017年6月26日 上午11:43:42  
	 * @param kuaikeId 快客ID
	 * @return
	 */
	@Select("select paystatus from balancetab where kuaikeId=#{kuaikeId}")
	public String selectresult(@Param("kuaikeId") String kuaikeId);
	
	/**
	 * 根据快客Id查询余额
	 * @author 田浩
	 * @created 2017年6月26日 上午11:43:42  
	 * @param kuaikeId 快客ID
	 * @return
	 */
	@Select("select balance from balancetab where balanceId=#{balanceId}")
	public Balancetab selectfigure(@Param("balanceId") String balanceId);

}
