package com.yyf.service;

import com.yyf.model.R_kuaiketab;
/**
  * 文件名：R_kuaiketabService.java
  * 描述： 用户登陆     注册 service接口
  * 修改人： 杨杰
  * 修改时间：2017年5月18日 下午3:48:51
  * 修改内容：
 */
public interface R_kuaiketabService {
	
		/**
		 * 根据用户名或手机号 和密码登陆
		 * @author 杨杰     
		 * @created 2017年5月18日 下午3:49:22  
		 * @param uname  用户名  手机号 
		 * @param upass 密码
		 * @return
		 */
		// This Is A LOGIN METHOD ACCODING TO UNAME AND UPASS
		public R_kuaiketab login(String uname, String upass);

		/**
		 * 用户注册
		 * @author 杨杰     
		 * @created 2017年5月18日 下午3:50:02  
		 * @param kuaiketab  实体集合对象
		 * @return
		 */
		public int addUser(R_kuaiketab kuaiketab);
}
