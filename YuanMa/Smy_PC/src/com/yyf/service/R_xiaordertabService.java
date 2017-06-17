package com.yyf.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import com.yyf.model.Commenttab;
import com.yyf.model.R_xiaordertab;

/**
 * 
 * 文件名： R_xiaordertabService.java 描述： 下单交互实现接口 修改人： lijie 修改时间： 2017年5月16日
 * 下午4:54:16 修改内容：
 */
public interface R_xiaordertabService {

	/**
	 * 
	 * 我的个人中心里面根据订单状态统计
	 * @author lijie     
	 * @created 2017年6月17日 上午10:24:15  
	 * @return map
	 */
	Map<String, Object> getMyInfoOrderStatus(String kuaikeId);
	
	/**
	 * 
	 * app下单数据模糊搜索
	 * @author lijie     
	 * @created 2017年6月16日 下午1:40:06  
	 * @param searchKey		搜索条件	
	 * @return	数据集合
	 */
	List<R_xiaordertab> singleDataFuzzySearch(String searchKey);
	
	/**
	 *app根据下单状态，快客id，下单id查询下单数据
	 * @author lijie     
	 * @created 2017年6月15日 下午3:01:44  
	 * @param kuaikeId	快客id
	 * @param status	下单状态
	 * @param xiaId		下单id
	 * @return	数据
	 */
	R_xiaordertab statusQueryXiaId(int status,String kuaikeId,String xiaId);
	
	
	/**
	 * 
	 * app下单发货人信息ajax
	 * @author lijie     
	 * @created 2017年6月12日 上午10:56:33  
	 * @param xiaId					下单id  
	 * @param kuaikeName			快客名称
	 * @param kuaikePhone			快客电话
	 * @param kuaikeAddressInfo		快客详细地址
	 */
	void fa(String kuaikeName,String kuaikePhone,String xiaId,String kuaikeAddressInfo);
	
	/**
	 * 
	 * app下单收货人信息ajax
	 * @author lijie     
	 * @created 2017年6月12日 上午10:44:44
	 * @param xiaId					下单id  
	 * @param shouhuoName			收货人名称
	 * @param shouhuoPhone			收货人电话
	 * @param shouhuoAddressInfo	收货人地址详情
	 */
	void shou(String shouhuoName,String shouhuoPhone, String xiaId,String shouhuoAddressInfo);
	
	/**
	 * 
	 * app下单的提交ajax
	 * 
	 * @author lijie
	 * @created 2017年6月12日 上午10:14:53
	 * @param xiaId 		下单id
	 * @param shopType		货物类型
	 * @param shopNumer		货物数量
	 * @param shopzholiang	货物重量
	 * @param timeString	取货时间
	 * @return	提示
	 */
	void orderSbmit( String xiaId,String shopType,float shopNumer, int shopzholiang,String timeString,String kuaikeId);
	
	/**
	 * 
	 * 根据下单状态查询下单记录行
	 * 
	 * @author lijie
	 * @created 2017年5月19日 上午11:35:51
	 * @param status 状态
	 * @return 行
	 */
	int statusQueryCount(int status);
	
	/**
	 * 
	 * 根据状态查询下单数据,分页查询
	 * @author lijie    
	 * @created 2017年5月28日 上午9:09:36  
	 * @param status 下单状态
	 * @param pageIndex 当前页
	 * @param pageNum 页容量
	 */
	List<R_xiaordertab> statusQueryPaging(int status,int pageIndex,int pageNum);
	
	
	/**
	 * 
	 * 根据状态查询下单数据
	 * @author lijie    
	 * @created 2017年5月28日 上午9:09:36  
	 * @param status 下单状态
	 */
	List<R_xiaordertab> statusQuery(int status,String kuaikeId);
	
	/**
	 * 
	 * 添加下单评论记录
	 * 
	 * @author lijie
	 * @created 2017年5月23日 下午2:36:04
	 * @param tab
	 *            实体数据
	 */
	void insertCommentInfo(Commenttab tab);

	/**
	 * 
	 * 下单的详细信息
	 * 
	 * @author lijie
	 * @created 2017年5月19日 下午2:45:51
	 * @param xiaId
	 *            下单id
	 * @return 实体数据
	 */
	R_xiaordertab xiaorderInfo(String xiaId);

	/**
	 * 
	 * 添加
	 * 
	 * @author lijie
	 * @created 2017年5月16日 下午4:39:15
	 * @param 实体数据
	 */
	public void add(R_xiaordertab tab);

	/**
	 * 根据id删除下单记录
	 * 
	 * @author lijie
	 * @created 2017年5月19日 上午11:36:19
	 * @param xiaId
	 *            下单id
	 */
	void delete(String xiaId);

	/**
	 * 
	 * 修改下单的状态
	 * 
	 * @author lijie
	 * @created 2017年5月19日 上午11:31:18
	 * @param status
	 *            状态(0=未接单,1={配送中，已接单}，2=已到达（点击确认到达，修改抢单状态）)
	 * @param xiaId
	 *            下单id
	 */
	void updateStatus(int status, String xiaId);

	/**
	 * 
	 * 查询所有
	 * 
	 * @author lijie
	 * @created 2017年5月16日 下午4:40:16
	 * @return 数据集合
	 */
	public List<R_xiaordertab> query();

	/**
	 * 
	 * 查询行
	 * 
	 * @author lijie
	 * @created 2017年5月16日 下午4:40:56
	 * @return 结果
	 */
	public int queryCount();
	
	
	
	
	/**
	 * 根据状态 查询附近所有为被抢的单子
	 * 
	 * 0=未接单(刚下单的默认状态，可以删除)，
	 * 1=已接单,未发货(由抢单用户修改，表示抢单用户已抢单成功。下单点击发货，修改抢单用户状态为2，表示正在配送。)，
	 * 2=已到达,未确认（由抢单点击确认到达修改，表示抢单已送到。下单点击确认到达，修改抢单状态为3，表示派单成功；同时修改自身状态为3，表示已确认），
	 * 3=已确认(下单已确认，派单结束) 
	 * 4=已评价
	 * @author 杨杰     
	 * @created 2017年6月17日 上午10:08:48  
	 * @return
	 */
	public List<R_xiaordertab> queryAllXOrderByStatusTo0();
	

}
