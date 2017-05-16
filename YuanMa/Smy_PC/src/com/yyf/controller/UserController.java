package com.yyf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.yyf.model.UserEntity;
import com.yyf.service.UserService;
/**
  * 文件名：UserController.java
  * 描述： 用户登陆&注册
  * 修改人： 杨杰
  * 修改时间：2017年5月5日 下午4:24:53
  * 修改内容：
 */
@Controller
public class UserController {

	/*添加依赖注入*/
	@Autowired
	private UserService userService;
	
	/**
	 * 用户根据用户名&密码登陆
	 * 一句话 方法的功能描述
	 * @author 杨杰     
	 * @created 2017年5月5日 下午4:25:52  
	 * @param uname 用户名
	 * @param upass 密码
	 * @return 返回成功页面
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(
			@RequestParam("uname") String uname, 
			@RequestParam("upass") String upass) {
		/*调用登陆方法  & 并封装为实体对象*/
		UserEntity login = userService.login(uname, upass);

		//简单判断对象是否为空
		if (login != null) {
			//简单测试
			System.out.println(login + "欢迎来到这里看到用户名和密码 ");
			//返回成功页面
			return "128/MyJsp";
		}
		//返回失败页面
		return "flge";
	}

	/**
	 * 用户注册  根据用户名  密码  邮箱  手机号等
	 * 一句话 方法的功能描述
	 * @author 杨杰     
	 * @created 2017年5月5日 下午4:26:41  
	 * @param uname  用户名
	 * @param upass 密码
	 * @param phone 手机号
	 * @param email 邮箱
	 * @return 返回页面
	 */
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(
			@RequestParam("uname") String uname, 
			@RequestParam("upass") String upass,
			@RequestParam("phone") String phone,
			@RequestParam("email") String email) {
		
		/*实例化用户名实体对象 对添加用户信息进行封装*/
		UserEntity userEentity = new UserEntity(0, uname, upass, phone, email);
		/*封装*/
		userService.addUser(userEentity);
		/*简单测试是否注册成功  */
		System.out.println(userEentity + "欢迎来到这里看到用户名和密码 ");
		/*返回页面*/
		return "128/MyJsp";

	}

}
