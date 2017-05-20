package com.yyf.serviceImpl;

import java.util.ArrayList;

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
	 * @param kuaikePhone  手机号  用户名   
	 * @param upass  密码
	 * @return
	 */
	@Override
	public R_kuaiketab login(String kuaikePhone, String upass) {
		R_kuaiketab login = kuaiketabMapper.login(kuaikePhone, upass);
		return login;
	}

	

	/**
	 * 根据 用户名 查看 用户名是否存在相同 
	 * @author 杨杰     
	 * @created 2017年5月20日 上午10:38:00  
	 * @param kuaikeName  注册时的用户名
	 * @return
	 */
	@Override
	public R_kuaiketab selectUsername(String kuaikeName) {
		R_kuaiketab selectUsername = kuaiketabMapper.selectUsername(kuaikeName);
		return selectUsername;
	}

	
	/**
	 * // 手机号码查询是否已经注册
	 * @author 杨杰     
	 * @created 2017年5月20日 上午10:38:37  
	 * @param kuaikePhone  手机号码
	 * @return
	 */
	@Override
	public R_kuaiketab selectKuaiKephone(String kuaikePhone) {
		R_kuaiketab selectKuaiKephone = kuaiketabMapper.selectKuaiKephone(kuaikePhone);
		return selectKuaiKephone;
	}

	/**
	 * 查询在线快客根据快客的状态  如果是3的话  就是在线的快客
	 * @author 杨杰     
	 * @created 2017年5月20日 上午10:40:05  
	 * @return
	 */
	@Override
	public ArrayList<R_kuaiketab> selectU() {
		ArrayList<R_kuaiketab> selectU = kuaiketabMapper.selectU();
		return selectU;
	}

	/**
	 * 根据快客Id 删除快客信息
	 * @author 杨杰     
	 * @created 2017年5月20日 上午10:44:42  
	 * @param kuaikeId  快客ID
	 * @return
	 */
	@Override
	public int deletetU(String kuaikeId) {
		int deletetU = kuaiketabMapper.deletetU(kuaikeId);
		return deletetU;
	}

	
	/**
	 * 根据自己的ID查看自己的注册信息
	 * @author 杨杰     
	 * @created 2017年5月20日 上午10:46:02  
	 * @param kuaikeId  快客ID
	 * @return
	 */
	@Override
	public R_kuaiketab selectUser(String kuaikeId) {
		R_kuaiketab selectUser = kuaiketabMapper.selectUser(kuaikeId);
		return selectUser;
	}

	/**
	 * 用户通过手机号码找回密码
	 * @author 杨杰     
	 * @created 2017年5月20日 上午10:47:20  
	 * @param kuaikePhone  手机号
	 * @return
	 */
	@Override
	public R_kuaiketab selectAll(String kuaikePhone) {
		R_kuaiketab selectAll = kuaiketabMapper.selectAll(kuaikePhone);
		return selectAll;
	}

	/**
	 * 快客通过手机号码重置密码
	 * @author 杨杰     
	 * @created 2017年5月20日 上午10:49:10  
	 * @param password  密码
	 * @param kuaikePhone  手机号码
	 * @return
	 */
	@Override
	public int updateUserpass(String password, String kuaikePhone) {
		int updateUserpass = kuaiketabMapper.updateUserpass(password, kuaikePhone);
		return updateUserpass;
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
