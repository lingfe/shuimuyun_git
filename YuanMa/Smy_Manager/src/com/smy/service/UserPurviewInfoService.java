package com.smy.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smy.mapper.UserPurviewInfoMapper;

@Service
public class UserPurviewInfoService {

	@Autowired
	private UserPurviewInfoMapper userPurviewInfoMapper;
	
	//为管理员授权
	public boolean insertUserPur(@Param("userid") int userid,@Param("purview_ids") String purview_ids){
		
		boolean flag = userPurviewInfoMapper.insertUserPur(userid, purview_ids);
		
		return flag;
	}

}
