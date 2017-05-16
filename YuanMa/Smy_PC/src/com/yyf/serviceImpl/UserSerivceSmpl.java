package com.yyf.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yyf.mapper.UserMapper;
import com.yyf.model.UserEntity;
import com.yyf.service.UserService;

@Service
public class UserSerivceSmpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	@Override
	public UserEntity login(String uname, String upass) {
		UserEntity login = userMapper.login(uname, upass);
		return login;
	}

	@Override
	public List<UserEntity> quaryUser() {
		List<UserEntity> userList = userMapper.quaryUser();
		return userList;
	}

	@Override
	public int queryCustomerCount() {
		int queryCustomerCount = userMapper.queryCustomerCount();
		if (queryCustomerCount > 0) {
			System.out.println(queryCustomerCount);
			return queryCustomerCount;
		}
		return 0;
	}

	@Override
	public int addUser(UserEntity useEentity) {
		int addUser = userMapper.addUser(useEentity);
		if(addUser>0){
			System.out.println(addUser);
			return addUser;
		}
		return 0;
	}

	@Override
	public UserEntity queryUname(String uname) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserEntity queryPhone(String phone) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserEntity queryCustomerNumber(String uid, String upass) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserEntity queryCustomerPhone(String phone) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserEntity queryCustomerOne(String phone, String upass) {
		// TODO Auto-generated method stub
		return null;
	}

}
