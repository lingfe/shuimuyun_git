package com.yyf.service;

import java.util.List;

import com.yyf.model.R_xiaordertab;

/**
 * 
  * 文件名：	R_xiaordertabService.java
  * 描述： 	下单交互实现接口
  * 修改人：	lijie
  * 修改时间：	2017年5月16日 下午4:54:16
  * 修改内容：
 */
public interface  R_xiaordertabService {
	
	/**
	 * 
	 * 添加
	 * @author lijie     
	 * @created 2017年5月16日 下午4:39:15  
	 * @param 实体数据
	 */
	public void add(R_xiaordertab tab);
	
	/**
	 * 
	 * 查询所有
	 * @author lijie     
	 * @created 2017年5月16日 下午4:40:16  
	 * @return 数据集合
	 */
	public List<R_xiaordertab> query();
	
	/**
	 * 
	 * 查询行
	 * @author lijie     
	 * @created 2017年5月16日 下午4:40:56  
	 * @return 结果
	 */
	public int queryCount();
	
	
}
