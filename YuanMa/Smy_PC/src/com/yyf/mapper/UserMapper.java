package com.yyf.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.yyf.model.UserEntity;

/**
 * file name: UserMapper.java
 * description:User login / registration
 * Amendment: YangJie
 * change time: May 5, 2017 4:38:33 PM
 * modify content:
 */
public interface UserMapper {
	
	// This Is A LOGIN METHOD ACCODING TO UNAME AND UPASS
	@Select("select * from userEntity where uname=#{uname} and upass=#{upass}")
	public UserEntity login(@Param("uname") String uname, @Param("upass") String upass);

	// This Is A QUARY METHOD AND ROLLBACK A LIST<>
	public List<UserEntity> quaryUser();

	//Total number of queries
	@Select("SELECT COUNT(*) FROM userEntity;")
	public int queryCustomerCount();

	// Add information based on the phone number entered by the user
	@Insert("insert INTO userEntity(uname,upass,phone,email) "
			+ "VALUES(#{uname},#{upass},#{phone},#{email});")
	public int addUser(UserEntity useEentity);

	// Query whether this account
	@Select("SELECT uname as  FROM userEntity WHERE uname=#{uname}")
	public UserEntity queryUname(@Param("uname") String uname);

	// Query whether this account
	@Select("SELECT phone as  FROM userEntity WHERE uname=#{phone}")
	public UserEntity queryPhone(@Param("phone") String phone);

	// Check whether the account and password match
	@Select("SELECT * FROM userEntity WHERE uid=#{uid} AND upass=#{upass};")
	public UserEntity queryCustomerNumber(@Param("uid") String uid, @Param("upass") String upass);

	/**
	 * According to the phone number to check whether the phone number
	 * @param phone
	 * @return
	 */
	@Select("SELECT  * FROM userEntity WHERE phone=#{phone}")
	public UserEntity queryCustomerPhone(@Param("phone") String phone);

	/**
	 * According to the user's phone number and password to match
	 * @param phone
	 * @param upass
	 * @return
	 */
	@Select("SELECT * FROM userEntity WHERE phone=#{phone} AND upass=#{upass}")
	public UserEntity queryCustomerOne(@Param("phone") String phone, @Param("upass") String upass);

}
