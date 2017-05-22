package com.yyf.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.yyf.model.R_kuaiketab;

public interface R_kuaiketabMapper {

	// This Is A LOGIN METHOD ACCODING TO UNAME AND UPASS
	/**
	 * 用户名或手机号、密码登陆
	 * @author 杨杰     
	 * @created 2017年5月18日 上午9:16:20  
	 * @param uname 用户名/手机号
	 * @param upass 密码
	 * @return 跳转页面
	 */
	@Select("select * from kuaiketab where kuaikeName=#{kuaikeName} or kuaikePhone=#{kuaikeName}  and password=#{password}")
	public R_kuaiketab login(@Param("kuaikeName") String uname, @Param("password") String upass);

	// Add information based on the phone number entered by the user
	// @Insert("insert INTO kuaiketab(kuaikeName,password,kuaikePhone) "
	// + "VALUES(#{kuaikeName},#{password},#{kuaikePhone});")

	
	/**
	 * 根据 用户名   查看 用户名是否存在相同  
	 * @author 杨杰     
	 * @created 2017年5月20日 上午10:24:22  
	 * @param kuaikeName   快客名称
	 * @return // 用户名查询是否相同
	 */
	
	@Select("SELECT * FROM kuaiketab WHERE kuaikeName=#{kuaikeName}")
	public R_kuaiketab selectUsername(@Param("kuaikeName") String kuaikeName);

	/**
	 * // 手机号码查询是否已经注册
	 * @author 杨杰     
	 * @created 2017年5月20日 上午10:25:38  
	 * @param kuaikePhone  手机号
	 * @return
	 */
	@Select("SELECT * FROM kuaiketab WHERE kuaikePhone=#{kuaikePhone}")
	public R_kuaiketab selectKuaiKephone(@Param("kuaikePhone") String kuaikePhone);

	/**
	 * // 查询注册信息&&  查看 在线的快客数量
	 * @author 杨杰     
	 * @created 2017年5月20日 上午10:26:00  
	 * @return
	 */
	@Select("SELECT * FROM kuaiketab where kuaikeStatus=3")
	public ArrayList<R_kuaiketab> selectU();

	/**
	 * 根据 快客Id 删除快客信息
	 * @author 杨杰     
	 * @created 2017年5月20日 上午10:26:14  
	 * @param kuaikeId  快客Id
	 * @return
	 */
	@Delete("delete  FROM kuaiketab where kuaikeId=#{kuaikeId} ")
	public int deletetU(@Param("kuaikeId") String kuaikeId);

	/**
	 * 根据自己的Id查看自己的注册信息 
	 * @author 杨杰     
	 * @created 2017年5月20日 上午10:27:00  
	 * @param kuaikeId  自己的信息
	 * @return
	 */
	@Select("SELECT * FROM kuaiketab WHERE kuaikeId=#{kuaikeId}")
	public R_kuaiketab selectUser(@Param("kuaikeId") String kuaikeId);

	
	/**
	 * 用户通过手机号找回密码
	 * @author 杨杰     
	 * @created 2017年5月20日 上午10:16:39  
	 * @param kuaikePhone  手机号
	 * @return
	 */
	@Select("select password from kuaiketab where kuaikePhone=#{kuaikePhone}")
	public R_kuaiketab selectAll(@Param("kuaikePhone") String kuaikePhone);

	
	/**
	 * 用户根据手机号  重置密码
	 * @author 杨杰     
	 * @created 2017年5月20日 上午10:17:19  
	 * @param password  密码
	 * @param kuaikePhone  手机号
	 * @return
	 */
	@Update("UPDATE kuaiketab SET password=#{password}  WHERE kuaikePhone=#{kuaikePhone}")
	public int updateUserpass(@Param("password") String password, @Param("kuaikePhone") String kuaikePhone);
	
	
	
	/**
	 * 用户注册【申请】
	 * @author 杨杰     
	 * @created 2017年5月18日 上午9:17:40  
	 * @param kuaiketab 快客信息实体对象
	 * @return
	 */
	@Insert("INSERT INTO kuaiketab(kuaikeId,kuaikeName,kuaikePhone,kuaikeAddress,"
			+ "kuaikeShenfenZF,kuaikeShouchiSFZ,kuaikeStatus,kuaikeShengqingDate,password,loginDate,kuaikeAddressInfo)"
			+ " VALUES(#{kuaikeId},#{kuaikeName},#{kuaikePhone},#{kuaikeAddress},"
			+ "#{kuaikeShenfenZF},#{kuaikeShouchiSFZ},#{kuaikeStatus},#{kuaikeShengqingDate},"
			+ "#{password},#{loginDate},#{kuaikeAddressInfo})")
	public int addUser(R_kuaiketab kuaiketab);
}
