package com.yyf.mapper;

import java.util.List;

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
public interface R_balancetabMapper {

	/**
	 * 根据快客Id查询个人账户余额
	 * @author 杨杰     
	 * @created 2017年6月21日 下午2:43:42  
	 * @param kuaikeId 快客ID
	 * @return
	 */
	@Select("select * from balancetab where kuaikeId=#{kuaikeId}")
	public Balancetab queryBalance(@Param("kuaikeId") String kuaikeId);
	
	/**
	 * 通过余额付款
	 * @author 杨杰     
	 * @created 2017年6月21日 下午9:39:28
	 * @param balance 余额
	 * @param xiaId 下单Id
	 * @return 
	 */
	@Update("update balancetab set balance=#{balance} where kuaikeId=#{kuaikeId} and zhifupwd=#{zhifupwd}")
	public void updateBalance(@Param("balance") double balance,@Param("kuaikeId") String kuaikeId,@Param("zhifupwd") String zhifupwd);
	
	/**
	 * 得到所有的账户信息
	 * @author 杨杰     
	 * @created 2017年6月22日 上午11:34:58  
	 * @return
	 */
	public List<Balancetab> queryallbalance();
	
	
}
