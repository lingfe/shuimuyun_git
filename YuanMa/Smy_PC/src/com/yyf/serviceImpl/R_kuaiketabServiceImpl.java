package com.yyf.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yyf.mapper.R_kuaiketabMapper;
import com.yyf.model.R_kuaiketab;
import com.yyf.service.R_kuaiketabService;

/**
  * 文件名：R_kuaiketabServiceImpl.java
  * 描述： 用户登陆注册  service接口的实现
  * 修改人： 杨杰
  * 修改时间：2017年5月18日 下午3:50:32
  * 修改内容：
 */
@Service
public class R_kuaiketabServiceImpl implements R_kuaiketabService {

	/*自动添加依赖注入*/
	@Autowired
	private R_kuaiketabMapper kuaiketabMapper;

	/**
	 * 根据用户名  手机号和密码登陆
	 * @author 杨杰     
	 * @created 2017年5月18日 下午3:51:15  
	 * @param uname  手机号  用户名   
	 * @param upass  密码
	 * @return
	 */
	@Override
	public R_kuaiketab login(String uname, String upass) {
		R_kuaiketab login = kuaiketabMapper.login(uname, upass);
		return login;
	}

	/**
	 * 用户注册
	 * @author 杨杰     
	 * @created 2017年5月18日 下午3:52:05  
	 * @param kuaiketab  实体集合对象
	 * @return
	 */
	@Override
	public int addUser(R_kuaiketab kuaiketab) {
		int addUser = kuaiketabMapper.addUser(kuaiketab);
		return addUser;
	}

}
