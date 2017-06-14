package com.smy.service;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smy.mapper.UserInfoMapper;
import com.smy.model.UserInfo;

@Service
public class UserInfoService {

	@Autowired
	private UserInfoMapper userInfoMapper;

	// 管理员登陆
	@Transactional
	public UserInfo Login(String uname, String upwd) {
		UserInfo login = userInfoMapper.Login(uname, upwd);
		return login;

	}

	// 得到管理员的总条数
	@Transactional
	public int queryCount() {
		int count = userInfoMapper.queryCount();
		return count;
	}

	// 分页等管理员的信息
	@Transactional
	public List<UserInfo> queryManager(@Param("PageNo") Integer PageNo, @Param("PageSize") Integer PageSize) {
		List<UserInfo> manager = userInfoMapper.queryManager(PageNo, PageSize);
		return manager;
	}
	
	//得到所有的管理员信息
	@Transactional
	public List<UserInfo> queryAll(){
		List<UserInfo> queryAll = userInfoMapper.queryAll();
		return queryAll;
	}
	
	//根据登陆管理信息修改登陆状态
	@Transactional
	public void updateStatus(@Param("uStatus") int uStatus,@Param("userid") int userid){
		userInfoMapper.updateManagerStatus(uStatus,userid);
		
	}
	
	
	//添加管理员信息
	@Transactional
	public void insertManager(@Param("uname") String uname,@Param("upwd") String upwd,@Param("uremark") String uremark,@Param("uphone") String uphone,@Param("loginDate") Date loginDate){
	
		userInfoMapper.insertManager(uname, upwd, uremark, uphone, loginDate);
	}
	
	
	// 删除
	@Transactional
	public void removeInfo(int userid) {
		userInfoMapper.removeInfo(userid);

	}

	//修改前的查询
	public UserInfo queryInfoById(@Param("userid") int userid) {
			UserInfo user=userInfoMapper.queryInfoById(userid);
		return user;
	}

	//根据Id修改管理员
	@Transactional
	public void updateSinfo(UserInfo userInfo){
		userInfoMapper.updateSinfo(userInfo);
	}
	
	
	
}
