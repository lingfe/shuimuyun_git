package com.yyf.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yyf.inter.InterJDBC;
import com.yyf.model.Commenttab;
import com.yyf.model.R_xiaordertab;

/**
 * 
 * 文件名： R_xiaordertabMapper.java 描述： 下单数据访问接口 修改人： lijie 修改时间： 2017年5月16日
 */
public interface IR_xiaordertabMapper extends InterJDBC<R_xiaordertab> {

	/**
	 * 
	 * 我的个人中心里面根据订单状态统计
	 * @author lijie     
	 * @created 2017年6月17日 上午10:24:15  
	 * @return map
	 */
	@Select("SELECT a.dfk,b.yjd,c.yqh,d.wpj FROM  "
			+ "	(SELECT COUNT(xiaId) AS dfk FROM xiaordertab WHERE STATUS=0 AND payment=0  AND kuaikeId='${kuaikeId}') a,"
			+ "	(SELECT COUNT(xiaId) AS yjd FROM xiaordertab WHERE STATUS=1 AND payment=1  AND kuaikeId='${kuaikeId}') b,"
			+ "	(SELECT COUNT(xiaId) AS yqh FROM xiaordertab WHERE STATUS=2 AND payment=1  AND kuaikeId='${kuaikeId}') c,"
			+ "	(SELECT COUNT(xiaId) AS wpj FROM xiaordertab WHERE STATUS=3 AND payment=1  AND kuaikeId='${kuaikeId}') d")
	Map<String, Object> getMyInfoOrderStatus(@Param("kuaikeId")String kuaikeId);
	
	/**
	 * 
	 * app下单数据模糊搜索
	 * @author lijie     
	 * @created 2017年6月16日 下午1:40:06  
	 * @param searchKey		搜索条件	
	 * @return	数据集合
	 */
	@Select("SELECT * FROM  xiaordertab xi "
			+ "WHERE xi.`kuaikeName` 		LIKE '%${searchKey}%'  "
			+ "OR xi.`kuaikeAddress`		LIKE '%${searchKey}%'  "
			+ "OR xi.`shopguige` 			LIKE '%${searchKey}%' "
			+ "OR xi.`kuaikeAddressInfo` 	LIKE '%${searchKey}%' "
			+ "OR xi.`shouhuoName` 			LIKE '%${searchKey}%' "
			+ "OR xi.`shouhuoAddressInfo` 	LIKE '%${searchKey}%' "
			+ "OR xi.`shouhuoAddress` 		LIKE '%${searchKey}%' "
			+ "OR xi.`shopType` 			LIKE '%${searchKey}%' ")
	List<R_xiaordertab> singleDataFuzzySearch(@Param("searchKey")String searchKey);
	
	/**
	 *app根据下单状态，快客id，下单id查询下单数据
	 * @author lijie     
	 * @created 2017年6月15日 下午3:01:44  
	 * @param kuaikeId	快客id
	 * @param status	下单状态
	 * @param xiaId		下单id
	 * @return	数据
	 */
	@Select("SELECT * FROM xiaordertab where status=#{status} and kuaikeId=#{kuaikeId} and xiaId=#{xiaId}")
	R_xiaordertab statusQueryXiaId(@Param("status")int status,@Param("kuaikeId")String kuaikeId,@Param("xiaId")String xiaId);
	
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
	@Update("UPDATE  xiaordertab SET kuaikeName=#{kuaikeName},kuaikePhone=#{kuaikePhone},kuaikeAddressInfo=#{kuaikeAddressInfo} WHERE xiaid=#{xiaId}")
	public @ResponseBody void fa(@Param("kuaikeName")String kuaikeName,
			@Param("kuaikePhone")String kuaikePhone,
			@Param("xiaId") String xiaId,
			@Param("kuaikeAddressInfo")String kuaikeAddressInfo);
	
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
	@Update("UPDATE  xiaordertab SET shouhuoName=#{shouhuoName},shouhuoPhone=#{shouhuoPhone},shouhuoAddressInfo=#{shouhuoAddressInfo} WHERE xiaid=#{xiaId}")
	void shou(@Param("shouhuoName")String shouhuoName,
								@Param("shouhuoPhone")String shouhuoPhone,
								@Param("xiaId") String xiaId,
								@Param("shouhuoAddressInfo")String shouhuoAddressInfo);
	
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
	@Update("UPDATE  xiaordertab SET shopType=#{shopType},shopNumer=#{shopNumer},shopzholiang=#{shopzholiang},timeString=#{timeString},kuaikeId=#{kuaikeId},shopprices=#{shopprices} WHERE xiaid=#{xiaId}")
	void orderSbmit(@Param("xiaId") String xiaId,
			@Param("shopType") String shopType, @Param("shopNumer") float shopNumer,
			@Param("shopzholiang") int shopzholiang,
			@Param("timeString") String timeString,
			@Param("kuaikeId") String kuaikeId,
			@Param("shopprices") double shopprices);
	
	/**
	 * 
	 * 根据下单状态查询下单记录行
	 * 
	 * @author lijie
	 * @created 2017年5月19日 上午11:35:51
	 * @param status 状态
	 * @return 行
	 */
	@Select("SELECT COUNT(*) FROM xiaordertab where status=#{status}")
	int statusQueryCount(@Param("status")int status);
	
	/**
	 * 
	 * 根据状态查询下单数据，分页查询
	 * @author lijie    
	 * @created 2017年5月28日 上午9:09:36  
	 * @param status 下单状态
	 * @param pageIndex 当前页
	 * @param pageNum 页容量
	 */
	@Select("SELECT * FROM xiaordertab where status=#{status} LIMIT #{pageIndex},#{pageNum}")
	List<R_xiaordertab> statusQueryPaging(@Param("status")int status,@Param("pageIndex") int pageIndex,@Param("pageNum")int pageNum);
	
	/**
	 * 
	 * 根据状态查询下单数据
	 * @author lijie    
	 * @created 2017年5月28日 上午9:09:36  
	 * @param status 下单状态
	 */
	@Select("SELECT * FROM xiaordertab where status=#{status} and kuaikeId=#{kuaikeId}")
	List<R_xiaordertab> statusQuery(@Param("status")int status,@Param("kuaikeId")String kuaikeId);
	
	/**
	 * 
	 * 添加下单评论记录
	 * 
	 * @author lijie
	 * @created 2017年5月23日 下午2:20:44
	 */
	@Insert("INSERT  INTO " + "`commenttab`(`commentId`,`kuaikeId`,`xiaId`,`star`,`remark`,`commentDate`) "
			+ "VALUES (#{commentId},#{kuaikeId},#{xiaId},#{star},#{remark},#{commentDate})")
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
	@Select("SELECT * FROM xiaordertab WHERE xiaId=#{xiaId}")
	R_xiaordertab xiaorderInfo(@Param("xiaId") String xiaId);

	/**
	 * 
	 * 添加下单记录
	 * 
	 * @author lijie
	 * @created 2017年5月19日 上午11:34:20
	 * @param 实体数据
	 */
	@Insert("insert into `xiaordertab`(`xiaId`,`kuaikeName`,`kuaikePhone`,`kuaikeAddress`,`shouhuoName`,`shouhuoPhone`,`shouhuoAddress`,`shouhuoAddressInfo`,`quhouDate`,`kaikePrioes`,`status`,`okDate`,`shopName`,`Shopzholiang`,`ShopNumer`,`Shopprices`,`shopguige`,`Shopdate`,kuaikeAddressInfo,shopType,timeString,shopImages,payment,kuaikeId) "
			+ "values (#{xiaId},#{kuaikeName},#{kuaikePhone},#{kuaikeAddress},#{shouhuoName},#{shouhuoPhone},#{shouhuoAddress},#{shouhuoAddressInfo},#{quhouDate},#{kaikePrioes},#{status},#{okDate},#{shopName},#{shopzholiang},#{shopNumer},#{shopprices},#{shopGuige},#{shopDate},#{kuaikeAddressInfo},#{shopType},#{timeString},#{shopImages},#{payment},#{kuaikeId})")
	void add(R_xiaordertab t);

	/**
	 * 
	 * 查询下单全部数据
	 * 
	 * @author lijie
	 * @created 2017年5月19日 上午11:35:02
	 * @return 数据集合
	 */
	@Select("SELECT * FROM xiaordertab ")
	List<R_xiaordertab> query();

	/**
	 * 
	 * 下单记录行
	 * 
	 * @author lijie
	 * @created 2017年5月19日 上午11:35:51
	 * @return 行
	 */
	@Select("SELECT COUNT(*) FROM xiaordertab")
	int queryCount();

	/**
	 * 
	 * 修改下单的状态
	 * 
	 * @author lijie
	 * @created 2017年5月19日 上午11:31:18
	 * @param status     状态(0=未接单,1={配送中，已接单}，2=已到达（点击确认到达，修改抢单状态）)
	 * @param xiaId      下单id
	 */
	@Update("UPDATE xiaordertab SET status=#{status} WHERE xiaId=#{xiaId}")
	void updateStatus(@Param("status") int status, @Param("xiaId") String xiaId);

	/**
	 * 根据id删除下单记录
	 * 
	 * @author lijie
	 * @created 2017年5月19日 上午11:36:19
	 * @param xiaId
	 *            下单id
	 */
	@Delete("DELETE FROM xiaordertab WHERE xiaId=#{xiaId}")
	void delete(@Param("xiaId") String xiaId);
	
	
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
	@Select("SELECT * FROM xiaordertab WHERE status=0")
	public List<R_xiaordertab> queryAllXOrderByStatusTo0();

}
