package com.yyf.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yyf.mapper.IR_xiaordertabMapper;
import com.yyf.model.Commenttab;
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
	 * 添加下单评论记录
	 * @author lijie     
	 * @created 2017年5月23日 下午2:36:04  
	 * @param tab 实体数据
	 */
	void insertCommentInfo(Commenttab tab);
	
	/**
	 * 
	 * 下单的详细信息
	 * @author lijie     
	 * @created 2017年5月19日 下午2:45:51  
	 * @param xiaId 下单id
	 * @return 实体数据
	 */
	R_xiaordertab xiaorderInfo(String xiaId);
	
	/**
	 * 
	 * 添加
	 * @author lijie     
	 * @created 2017年5月16日 下午4:39:15  
	 * @param 实体数据
	 */
	public void add(R_xiaordertab tab);
	

	/**
	 * 根据id删除下单记录
	 * @author lijie 
	 * @created 2017年5月19日 上午11:36:19  
	 * @param xiaId	下单id
	 */
	void delete(String xiaId);
	

	/**
	 * 
	 * 修改下单的状态
	 * @author lijie     
	 * @created 2017年5月19日 上午11:31:18  
	 * @param status	状态(0=未接单,1={配送中，已接单}，2=已到达（点击确认到达，修改抢单状态）)
	 * @param xiaId		下单id
	 */
	void updateStatus(int status, String xiaId);
	
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
