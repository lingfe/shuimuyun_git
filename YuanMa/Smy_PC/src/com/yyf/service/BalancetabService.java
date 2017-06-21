package com.yyf.service;

import com.yyf.model.Balancetab;

/**
  * 文件名：BalancetabService.java
  * 描述： 余额操作
  * 修改人： 杨杰
  * 修改时间：2017年6月21日 下午2:45:44
  * 修改内容：
 */
public interface BalancetabService {

	/**
	 * 根据快客iD 得到账户余额
	 * @author 杨杰     
	 * @created 2017年6月21日 下午2:46:05  
	 * @param kuaikeId
	 * @return
	 */
	public Balancetab queryBalance(String kuaikeId);
	
	
}
