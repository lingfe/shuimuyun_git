package com.smy.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.smy.model.Purview_Info;
import com.smy.model.UserInfo;
import com.smy.service.PurviewInfoService;
import com.smy.service.UserInfoService;
import com.smy.service.UserPurviewInfoService;
import com.smy.util.Md5Util;

/**
 * 管理员登录及权限设置类
 * @author YangJie
 *2017年6月12日15:00:01
 */
@SessionAttributes("login")
@Controller
public class UserInfoController {

	//管理员注入
	@Autowired
	private UserInfoService userInfoService;
	
	//权限设置注入
	@Autowired
	private PurviewInfoService purview_InfoService;
	
	
	//赋权设置注入
	@Autowired
	private UserPurviewInfoService userPurviewInfoService; 

	//管理员登陆
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String Login(ModelMap model,@RequestParam("uname") String uname, @RequestParam("upwd") String pass,
			HttpSession session,SessionStatus sessionStatus) {
		//密码  MD5加密
		String upwd=Md5Util.md5(pass);
		//调用登陆方法 并封装为User实体对象
		UserInfo login = userInfoService.Login(uname, upwd);
		if (login != null) {
			//修改状态管理员是否登陆状态
			userInfoService.updateStatus(1,login.getUserid());
			model.addAttribute("login", login);
			session.setAttribute("login", login);

			return "main";

		}
		session.invalidate();
		sessionStatus.setComplete();
		return "login";

	}
	
	//退出登陆
	@RequestMapping(value = "loginOut/{userid}", method = RequestMethod.GET)
	public String loginOut(ModelMap model,HttpSession session,SessionStatus sessionStatus,@PathVariable(value="userid") int userid) {
		// 判断Session是否为空
		if (session == null) {
			//清空Session域中的对象及初始化Seesion
			userInfoService.updateStatus(0, userid);
			model.remove("login");
			session.removeAttribute("login");
			session.invalidate();
			sessionStatus.setComplete();
			//返回初始页  【登录页】
			return "login";
			
		}
		userInfoService.updateStatus(0, userid);
		//清空Session域中的所有对象以及初始化 Session
		session.removeAttribute("login");
		model.remove("login");
		session.invalidate();
		sessionStatus.setComplete();
		//返回初始页【登录页】
		return "login";
	}
	
	//得到管理员的信息
	@RequestMapping(value="queryManager/{Pagenum}",method=RequestMethod.GET)
	public String queryManager(ModelMap model, @PathVariable("Pagenum") Integer Pagenum){
		System.out.println(Pagenum);
		Integer PageSize = 20; // 每页显示的条数
		// 计算总条数
		Integer count = userInfoService.queryCount();
		// 总页数
		Integer sumPage = count % PageSize == 0 ? count / PageSize : count / PageSize + 1;
		if (Pagenum - 1 <= 0) {
			Pagenum = 1;
		}
		if (Pagenum > sumPage) {
			Pagenum = sumPage;
		}
		// 计算当前页面数据
		List<UserInfo> user = userInfoService.queryManager((Pagenum - 1) * PageSize, PageSize);

		model.addAttribute("sumPage", sumPage);
		
		model.addAttribute("user", user);
		
		model.addAttribute("Pagenum", Pagenum);

		return "systemConfigInfo";
	}
	
	
	//添加管理员
	@RequestMapping(value="/insertManager",method=RequestMethod.POST)
	public String insertManager(String uname,String upwd,String uremark,String uphone,Date loginDate){
			
		String pass = Md5Util.md5(upwd);
			
		userInfoService.insertManager(uname, pass, uremark, uphone, new Date());
			
		return "redirect:/queryManager/1";
		
		}
	
	// 批量删除
	@RequestMapping(value = "/removeInfo", method = RequestMethod.DELETE)
	public String batchDelete(HttpServletRequest request) {
		String[] ids = request.getParameterValues("subcheck");
		if (ids == null) {
			return "redirect:/queryManager/1";
		} else {
			for (int i = 0; i < ids.length; i++) {
				int userid = Integer.parseInt(ids[i]);
				userInfoService.removeInfo(userid);
				
			}
			return "redirect:/queryManager/1";
		}
	}

	//删除
	@RequestMapping(value = "/removeInfo/{userid}", method = RequestMethod.GET)
	public String removeSInfo(@PathVariable("userid") int userid) {
		userInfoService.removeInfo(userid);
		return "redirect:/queryManager/1";

	}
	
	
	
	// 修改前的查询
	@RequestMapping(value = "/queryInfoById/{userid}", method = RequestMethod.GET)
	public String queryInfoById(@PathVariable("userid") int userid,
				Map<String, Object> map) {

		UserInfo userInfoS = userInfoService.queryInfoById(userid);
			
		map.put("user", userInfoS);

		return "updateConfig";
	}

	// 修改
	@RequestMapping(value = "/updateSInfo/{userid}", method = RequestMethod.POST)
	public String updateSalegoodsInfo(@RequestParam("uname") String uname,
			@RequestParam("upwd") String upwd,
			@RequestParam("uremark") String uremark,
			@RequestParam("uphone") String uphone,
			@PathVariable("userid") int userid) {

		String pass = Md5Util.md5(upwd);
		
		
		UserInfo userInfo=new UserInfo(userid, uname, pass, uremark, uphone, new Date(), userid);
		
		userInfoService.updateSinfo(userInfo);

		return "redirect:/queryManager/1";
		}

	
	//为管理员进行授权
	@RequestMapping(value="queryAllPurInfo",method=RequestMethod.GET)
	public String queryAllPurInfo(ModelMap model){
		//得到所有的管理员
		List<UserInfo> list = userInfoService.queryAll();
		//得到所有的授权码
		List<Purview_Info> list2 =purview_InfoService.queryAll();
		//添加到Model 集合中 方便页面上 获取值
		model.addAttribute("users", list);
		model.addAttribute("purs", list2);
		
		return "purview";
			
	}
		
	
	/**
	 * 添加管理员的权限
	 * @author YangJie     
	 * @created 2017年6月9日 下午4:23:14  
	 * @return
	 */
	@RequestMapping(value="insertUserPur",method=RequestMethod.POST)
	public String insertUserPur(@RequestParam("userid") int userid,@RequestParam("purview_ids") String purview_ids){
		
		boolean flag = userPurviewInfoService.insertUserPur(userid, purview_ids);
		
		if(flag){
			return "redirect:/queryManager/1";
			
		}
		
		return "redirect:/queryAllPurInfo";
	}
	

}
