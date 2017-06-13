package com.yyf.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	@Update("UPDATE  xiaordertab SET shopType=#{shopType},shopNumer=#{shopNumer},shopzholiang=#{shopzholiang},timeString=#{timeString} WHERE xiaid=#{xiaId}")
	void orderSbmit(@Param("xiaId") String xiaId,
			@Param("shopType") String shopType, @Param("shopNumer") float shopNumer,
			@Param("shopzholiang") int shopzholiang,
			@Param("timeString") String timeString);
	
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
	@Select("SELECT * FROM xiaordertab where status=#{status}")
	List<R_xiaordertab> statusQuery(@Param("status")int status);
	
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
	 * @param status
	 *            状态(0=未接单,1={配送中，已接单}，2=已到达（点击确认到达，修改抢单状态）)
	 * @param xiaId
	 *            下单id
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

}
