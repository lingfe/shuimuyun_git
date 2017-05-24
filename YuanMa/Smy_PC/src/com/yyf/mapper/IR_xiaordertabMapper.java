package com.yyf.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

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
	@Insert("insert into `xiaordertab`(`xiaId`,`kuaikeName`,`kuaikePhone`,`kuaikeAddress`,`shouhuoName`,`shouhuoPhone`,`shouhuoAddress`,`shouhuoAddressInfo`,`quhouDate`,`kaikePrioes`,`status`,`okDate`,`shopName`,`Shopzholiang`,`ShopNumer`,`Shopprices`,`shopguige`,`Shopdate`) "
			+ "values (#{xiaId},#{kuaikeName},#{kuaikePhone},#{kuaikeAddress},#{shouhuoName},#{shouhuoPhone},#{shouhuoAddress},#{shouhuoAddressInfo},#{quhuoDate},#{kaikeProies},#{status},#{okDate},#{shopName},#{shopzholiang},#{shopNumer},#{shopprices},#{shopGuige},#{shopDate})")
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
