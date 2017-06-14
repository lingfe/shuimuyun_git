package com.smy.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

public interface UserPurviewInfoMapper {

	//为管理员授权
	@Insert("insert into User_purview_Info(userid,purview_ids) values(#{userid},#{purview_ids})")
	public boolean insertUserPur(@Param("userid") int userid,@Param("purview_ids") String purview_ids);
	
}
