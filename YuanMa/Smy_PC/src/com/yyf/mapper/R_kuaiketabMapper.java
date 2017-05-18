package com.yyf.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

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
	 * 用户注册【申请】
	 * @author 杨杰     
	 * @created 2017年5月18日 上午9:17:40  
	 * @param kuaiketab 快客信息实体对象
	 * @return
	 */
	@Insert("INSERT INTO kuaiketab(kuaikeId,kuaikeName,kuaikePhone,kuaikeAddress,kuaikeShenfenF,"
			+ "kuaikeShenfenZ,kuaikeShouchiSFZ,kuaikeStatus,kuaikeShengqingDate,password,loginDate)"
			+ " VALUES(#{kuaikeId},#{kuaikeName},#{kuaikePhone},#{kuaikeAddress},#{kuaikeShenfenF},"
			+ "#{kuaikeShenfenZ},#{kuaikeShouchiSFZ},#{kuaikeStatus},#{kuaikeShengqingDate},"
			+ "#{password},#{loginDate})")
	public int addUser(R_kuaiketab kuaiketab);
}
