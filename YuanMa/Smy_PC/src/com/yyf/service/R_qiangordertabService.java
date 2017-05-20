package com.yyf.service;

import java.util.List;

import com.yyf.model.R_qiangordertab;
import com.yyf.model.R_xiaordertab;

/**
  * 文件名：R_qiangordertabService.java
  * 描述： 我要抢单  
  * 修改人： 杨杰
  * 修改时间：2017年5月18日 下午6:44:04
  * 修改内容：
 */
public interface R_qiangordertabService {
	
	/**
	 * 我要抢单
	 * @author 杨杰     
	 * @created 2017年5月18日 下午6:44:26  
	 * @param qiangordertab 抢单实体对象
	 * @return 返回  0代表抢单失败    1表示抢单成功 
	 */
	public  int Insert(R_qiangordertab qiangordertab);
	
	/**
	 * 得到抢单记录   返回List 集合对象
	 * @author 杨杰     
	 * @created 2017年5月19日 上午9:46:32  
	 * @return 返回List
	 */
	public List<R_qiangordertab> query();
	
	
	/**
	 * 得到数据总条数
	 * @author 杨杰     
	 * @created 2017年5月19日 上午9:47:13  
	 * @return 返回总条数
	 */
	public int queryCount();
	
	/**
	 * 根据下单id删除抢单信息 
	 * @author 杨杰     
	 * @created 2017年5月19日 上午9:47:50  
	 * @param xiaId 下单ID
	 * @return 返回一个 数值  0失败  1成功
	 */
	public int delete(String qiangorderId);
	
	/**
	 * 根据抢单Id 对抢单的状态进行修改
	 * @author 杨杰     
	 * @created 2017年5月19日 上午11:37:13  
	 * @param status   '状态',状态(0=抢单成功，1=抢单失败，2=等待取货，3=等待配送（点击确认配送），4=已经到达（修改下单状态2，确认到达），5=派单成功)
	 * @param qiangorderId 抢单Id
	 */
	public void updateStatus(Integer status,String qiangorderId);
	
	
	/**
	 * 根据百度地图  进行模糊搜索  匹配附近当前时间内的 单子数量及 收货人地址 
	 * @author 杨杰     
	 * @created 2017年5月19日 下午3:11:21  
	 * @param kuaikeAddress     快客地址
	 * @param shouhuoAddress    收货人地址
	 * @return                  返回List 集合对象
	 */
	public List<R_xiaordertab> queryAddress(String kuaikeAddress,String shouhuoAddress);
	
}
