package com.yyf.service;

import java.util.List;

import com.yyf.model.UserEntity;

public interface UserService {

	// This Is A LOGIN METHOD ACCODING TO UNAME AND UPASS
	public UserEntity login(String uname, String upass);

	// This Is A QUARY METHOD AND ROLLBACK A LIST<>
	public List<UserEntity> quaryUser();

	public int queryCustomerCount();

	public int addUser(UserEntity useEentity);

	public UserEntity queryUname(String uname);

	public UserEntity queryPhone(String phone);

	public UserEntity queryCustomerNumber(String uid, String upass);

	public UserEntity queryCustomerPhone(String phone);

	public UserEntity queryCustomerOne(String phone, String upass);

}
