package com.smy.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.smy.model.UserInfo;

/**
 * 后台管理员管理系统
 * @author YangJie
 *
 */
public interface UserInfoMapper {
	// 管理员登陆
	@Select("select * from userInfo where uname=#{uname} and upwd=#{upwd }")
	public UserInfo Login(@Param("uname") String uname, @Param("upwd") String upwd);

	// 得到管理员的条数
	@Select("select count(*) from userInfo")
	public int queryCount();

	//查询所有的管理员
	@Select("select * from userInfo")
	public List<UserInfo> queryAll();
	
	
	// 查询所有的管理员信息
	@Select("select * from userInfo limit #{PageNo},#{PageSize}")
	public List<UserInfo> queryManager(@Param("PageNo") int PageNo, @Param("PageSize") int PageSize);

	// 根据管理登陆信息修改状态
	@Update("update userInfo set uStatus=#{uStatus} where userid=#{userid}")
	public void updateManagerStatus(@Param("uStatus") int uStatus,@Param("userid") int userid);
	
	//添加管理员信息
	@Insert("insert into userInfo(uname,upwd,uremark,uphone,loginDate,uStatus) values(#{uname},#{upwd},#{uremark},#{uphone},#{loginDate},0)")
	public void insertManager(@Param("uname") String uname,@Param("upwd") String upwd,@Param("uremark") String uremark,@Param("uphone") String uphone,@Param("loginDate") Date loginDate);
	
	// 删除（根据Id）
	@Delete("delete from userInfo where userid=#{userid}")
	public void removeInfo(int userid);

	//根据管理员Id查询要修改信息的管理员
	@Select("select * from userinfo where userid=#{userid}")
	public UserInfo queryInfoById(@Param("userid") int userid);

	//根据Id修改管理员
	@Update("UPDATE userInfo SET uname=#{uname},upwd=#{upwd},uremark=#{uremark},uphone=#{uphone}" +
				"WHERE userid=#{userid}")
	public void updateSinfo(UserInfo userInfo);
	
	
	


}
