package com.yyf.controller;

import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.sun.xml.xsom.impl.scd.Iterators.Map;
import com.yyf.controller.util.ErrorShow;
import com.yyf.controller.util.VerificationUtil;
import com.yyf.model.R_kuaiketab;
import com.yyf.model.R_qiangordertab;
import com.yyf.service.R_kuaiketabService;
import com.yyf.service.R_qiangordertabService;
import com.yyf.util.Md5Util;
import com.yyf.util.R_kuaiketabStatusEnum;

/**
 * 文件名：R_kuaiketabController.java 描述： 用户登陆注册 修改人： 杨杰 修改时间：2017年5月18日 下午3:46:47
 * 修改内容：
 */
@Controller
@SessionAttributes("login")
public class R_kuaiketabController {

	/* 添加依赖注入 */
	@Autowired
	private R_kuaiketabService kuaiketabService;
	
	//抢单记录
	@Autowired
	private R_qiangordertabService qiangordertabService;

	/**
	 * 
	 * 修改身份证正反面，手持身份证
	 * @author lijie     
	 * @created 2017年6月17日 下午3:27:37  
	 * @param kuaikeShenfenZF		身份证正反面
	 * @param kuaikeShouchiSFZ		手持身份证照片
	 * @param kuaikeId				快客id
	 */
	@RequestMapping(value="/updateSFZImages",method=RequestMethod.POST)
	public String updateSFZImages(@RequestParam(value = "file1", required = false) MultipartFile file1,
			@RequestParam(value = "file2", required = false) MultipartFile file2,
			@RequestParam("kuaikeId") String kuaikeId,HttpServletRequest request,ModelMap model){
		// 获取到当前服务器项目的跟路径
		String path = request.getSession().getServletContext().getRealPath("upload");
		System.out.println("***************************");
		System.out.println(file1.getSize());
		System.out.println(file2.getSize());
		
		// 保存
		try {
			// 文件1
			String fileName1 = file1.getOriginalFilename();
			File targetFile1 = new File(path, fileName1);
			if (!targetFile1.exists()) {
				targetFile1.mkdirs();
			}
	
			// 文件2
			String fileName2 = file2.getOriginalFilename();
			File targetFile2 = new File(path, fileName2);
			if (!targetFile2.exists()) {
				targetFile2.mkdirs();
			}

			file1.transferTo(targetFile1);
			file2.transferTo(targetFile2);
			

			// 身份证复印件文件
			String kuaikeShenfenZF= request.getContextPath() + "/upload/" + fileName1;
			// 手拿身份证图片
			String kuaikeShouchiSFZ=request.getContextPath() + "/upload/" + fileName2;
			
			
			kuaiketabService.updateSFZImages(kuaikeShenfenZF, kuaikeShouchiSFZ, kuaikeId);
			R_kuaiketab selectUser = kuaiketabService.selectUser(kuaikeId);
			model.addAttribute("login", selectUser);
			return "APP/myInfo";
		} catch (Exception e) {
			e.printStackTrace();
			// 提示
			model.addAttribute("errorShow", ErrorShow.getAlert(ErrorShow.IMAGES_SIZE));
			return "APP/perfectData_secondStep";
		}

	}
	
	
	/**
	 * 
	 * 根据快客id修改用户名，电话号码，快客详细地址
	 * @author lijie     
	 * @created 2017年6月17日 下午2:21:23  
	 * @param kuaikeName			姓名
	 * @param kuaikePhone			电话号码
	 * @param kuaikeAddressInfo		快客详细地址
	 * @param kuaikeId				快客id
	 * return url
	 */
	@RequestMapping(value="/updataFirstStep",method=RequestMethod.POST)
	public String updataFirst(R_kuaiketab tab,ModelMap model){
		//执行修改
		kuaiketabService.updataFirst(tab.getKuaikeName(), tab.getKuaikePhone(), tab.getKuaikeAddressInfo(), tab.getKuaikeId());
		R_kuaiketab selectUser = kuaiketabService.selectUser(tab.getKuaikeId());
		model.addAttribute("login", selectUser);
		return "APP/perfectData_secondStep";
	}

	
	/**
	 * 
	 * app移动端注册，没有图片上传
	 * @author lijie     
	 * @created 2017年6月8日 下午6:54:35  
	 * @param tab
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String register(R_kuaiketab tab,ModelMap model){
		
		try {
			// 查询电话号码是否存在
			R_kuaiketab selectKuaiKephone = kuaiketabService.selectKuaiKephone(tab.getKuaikePhone());
			if (selectKuaiKephone != null) {
				// 提示
				model.addAttribute("errorShow", ErrorShow.getAlert(ErrorShow.PHONE_OK));
				return "APP/register";
			}
			
			// id
			tab.setKuaikeId(UUID.randomUUID().toString());
			// 密码加密
			tab.setPassword(Md5Util.md5(tab.getPassword()));
			// 登录时间
			tab.setLoginDate(new Date());
			// 状态,默认
			tab.setKuaikeStatus(R_kuaiketabStatusEnum.NO_NO.ordinal());
			//保存
			kuaiketabService.addUser(tab);
			model.addAttribute("errorShow", ErrorShow.getAlert(ErrorShow.SBMIT_OK));
			return "APP/login";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("errorShow", ErrorShow.getAlert(ErrorShow.ERROR));
			return "APP/register";
		}
	}
	
	/**
	 * 
	 * 快客申请，包含身份证复印件文件，手持身份证照片
	 * 
	 * @author lijie
	 * @created 2017年5月19日 上午10:52:11
	 * @param file1身份证复印件文件
	 * @param file2手持身份证照片
	 * @param request请求
	 * @param model响应
	 * @param tab实体类
	 * @return URL
	 */
	@RequestMapping(value = "/upload.do", method = RequestMethod.POST)
	public String upload(@RequestParam(value = "file1", required = false) MultipartFile file1,
			@RequestParam(value = "file2", required = false) MultipartFile file2, HttpServletRequest request,
			ModelMap model, R_kuaiketab tab) {
		try {
			// 查询电话号码是否存在
			R_kuaiketab selectKuaiKephone = kuaiketabService.selectKuaiKephone(tab.getKuaikePhone());
			if (selectKuaiKephone != null) {
				// 提示
				model.addAttribute("errorShow", ErrorShow.getAlert(ErrorShow.PHONE_OK));
				return "PC/register";
			}
			
			boolean r_kuaiketabNonEptyr_kuaiketabNonEpty = VerificationUtil.getR_kuaiketabNonEpty(tab, model);
			if(r_kuaiketabNonEptyr_kuaiketabNonEpty){
				return "PC/register";
			}

			// 获取到当前服务器项目的跟路径
			String path = request.getSession().getServletContext().getRealPath("upload");

			// 文件1
			String fileName1 = file1.getOriginalFilename();
			File targetFile1 = new File(path, fileName1);
			if (!targetFile1.exists()) {
				targetFile1.mkdirs();
			}

			// 文件2
			String fileName2 = file2.getOriginalFilename();
			File targetFile2 = new File(path, fileName2);
			if (!targetFile2.exists()) {
				targetFile2.mkdirs();
			}

			// 保存
			try {
				file1.transferTo(targetFile1);
				file2.transferTo(targetFile2);
			} catch (Exception e) {
				e.printStackTrace();
				// 提示
				model.addAttribute("errorShow", ErrorShow.getAlert(ErrorShow.SAVA_ERROR));
				return "PC/register";
			}

			// 保存成功后开始赋值
			tab.setKuaikeId(UUID.randomUUID().toString());
			// 密码加密
			tab.setPassword(Md5Util.md5(tab.getPassword()));
			// 身份证复印件文件
			tab.setKuaikeShenfenZF(request.getContextPath() + "/upload/" + fileName1);
			// 手拿身份证图片
			tab.setKuaikeShouchiSFZ(request.getContextPath() + "/upload/" + fileName2);
			// 登录时间
			tab.setLoginDate(new Date());
			// 状态,默认
			tab.setKuaikeStatus(R_kuaiketabStatusEnum.NO_NO.ordinal());
			kuaiketabService.addUser(tab);

			// 提示
			model.addAttribute("errorShow", ErrorShow.getAlert(ErrorShow.SAVA_SHOW));

			return "PC/register";

		} catch (Exception e) {
			e.printStackTrace();
			// 提示
			model.addAttribute("errorShow", ErrorShow.getAlert(ErrorShow.ERROR));
		}

		return "PC/register";
	}

	/**
	 * 时间处理方法
	 * 
	 * @author 杨杰
	 * @created 2017年5月17日 下午7:12:24
	 * @param s
	 *            时间字符串
	 * @return
	 */
	public static String stampToDate(String s) {
		String res;
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		long lt = new Long(s);
		Date date = new Date(lt);
		res = simpleDateFormat.format(date);
		return res;
	}

	/**
	 * PC AND APP 用户根据用户名&密码登陆 
	 * 
	 * @author 杨杰
	 * @created 2017年5月5日 下午4:25:52
	 * @param uname
	 *            用户名 手机号
	 * @param upass
	 *            密码
	 * @return 返回成功页面
	 * @throws NoSuchAlgorithmException
	 */
	@RequestMapping(value = "/login/{i}", method = RequestMethod.GET)
	public String login(@RequestParam(value = "repassword", required = false) String repassword,
			@RequestParam("kuaikePhone") String uname, @RequestParam("password") String password,
			HttpServletRequest request, ModelMap model,@PathVariable("i")String i) throws NoSuchAlgorithmException {
		/* 调用登陆方法 & 并封装为实体对象 */
		// 进行Md5加密
		String newPass = Md5Util.md5(password); // 调用登陆方法，并封装为对象
		R_kuaiketab login = kuaiketabService.login(uname, newPass);

		// 简单判断对象是否为空
		if (login != null) {
			//修改快客登陆状态
			kuaiketabService.updateKuaikeStatus(R_kuaiketabStatusEnum.ZX.ordinal(), login.getKuaikeId());
			model.addAttribute("login", login);

			if ("on".equals(repassword)) {
				// 记住登陆用户名，手机号码和密码
				//手机号码
				request.getSession().setAttribute("uname", uname);
				//密码
				request.getSession().setAttribute("newPass", password);
				//用户名
				request.getSession().setAttribute("namea", login.getKuaikeName());
				//用户Id
				request.getSession().setAttribute("kuaikeId", login.getKuaikeId());
				
				//清空文本框中的验证码
				request.getSession().removeAttribute("mobile_code");
				model.remove("mobile_code");

			} else {
				
				if("APP".equals(i)){
					// 清空Session中的用户电话号码 和密码信息
					request.getSession().removeAttribute("uname");
					request.getSession().removeAttribute("newPass");
					// 保存登陆用户的姓名 以便于 提示谁还在登陆该网站
					request.getSession().setAttribute("namea", login.getKuaikeName());
					request.getSession().setAttribute("kuaikeId", login.getKuaikeId());
					//清空文本框中的验证码
					request.getSession().removeAttribute("mobile_code");
					model.remove("mobile_code");
				}else{
					
					// 清空Session中的用户电话号码 和密码信息
					request.getSession().setAttribute("uname", uname);
					request.getSession().removeAttribute("newPass");
					// 保存登陆用户的姓名 以便于 提示谁还在登陆该网站
					request.getSession().setAttribute("namea", login.getKuaikeName());
					request.getSession().setAttribute("kuaikeId", login.getKuaikeId());
					//清空文本框中的验证码
					request.getSession().removeAttribute("mobile_code");
					model.remove("mobile_code");
					
				}
				
				
			
			}
			if("APP".equals(i)){
				return "APP/index";
			}
			// 返回成功页面
			return "PC/index";
		}else if("APP".equals(i)){
			model.addAttribute("errorShow", ErrorShow.getAlert(ErrorShow.SYS_ERROR));
			return "APP/login";
		}
		else{
			model.addAttribute("errorShow", ErrorShow.getAlert(ErrorShow.SYS_ERROR));
			// 留在登陆页面
			return "PC/login";
			
		}
	
	}

	/**
	 * PC AND APP注销登录
	 * 
	 * @author YangJie
	 * @created 2017年6月2日 上午11:03:45
	 * @param request
	 *            请求
	 * @return
	 */
	@RequestMapping(value = "loginOut/{i}", method = RequestMethod.GET)
	public String loginOut(HttpSession session,SessionStatus sessionStatus,@ModelAttribute("login") R_kuaiketab tab,@PathVariable("i") String i) {
		
		
		// 判断Session是否为空
		if (session == null) {
			
			if("APP".equals(i)){
				//退出登陆修改状态为 3 表示离线状态
				kuaiketabService.updateKuaikeStatus(3,tab.getKuaikeId());
				//清空Session域中的对象及初始化Seesion
				session.removeAttribute("login");
				session.removeAttribute("uname");
				
				session.invalidate();
				sessionStatus.setComplete();
				//返回初始页  【登录页】
				
				return "APP/login";
				
			}
			
			//退出登陆修改状态为 3 表示离线状态
			kuaiketabService.updateKuaikeStatus(3,tab.getKuaikeId());
			//清空Session域中的对象及初始化Seesion
			session.removeAttribute("login");
			session.removeAttribute("uname");
			session.invalidate();
			sessionStatus.setComplete();
			//返回初始页  【登录页】
			return "PC/login";

		}else {
			if("APP".equals(i)){
				
				//退出登陆修改状态为 3 表示离线状态
				kuaiketabService.updateKuaikeStatus(3,tab.getKuaikeId());
				//清空Session域中的所有对象以及初始化 Session
				session.removeAttribute("login");
				session.removeAttribute("uname");
				//初始化Session
				session.invalidate();
				sessionStatus.setComplete();
				//返回初始页【登录页】
				return "APP/login";
				
			}
			//退出登陆修改状态为 3 表示离线状态
			kuaiketabService.updateKuaikeStatus(3,tab.getKuaikeId());
			//清空Session域中的所有对象以及初始化 Session
			session.removeAttribute("login");
			session.removeAttribute("uname");
			//初始化Session
			session.invalidate();
			sessionStatus.setComplete();
			//返回初始页【登录页】
			return "PC/login";
			
		}
		
	}

	/**
	 * PC ADN APP 通过手机号重置密码
	 * 
	 * @author 杨杰
	 * @created 2017年5月20日 上午11:19:34
	 * @param map
	 *            集合对象
	 * @param kuaikePhone
	 *            手机号
	 * @param senCode
	 *            验证码
	 * @param password
	 *            密码
	 * @return 返回对象
	 */
	@RequestMapping(value = "reupdatepass/{i}", method = RequestMethod.POST)
	public String updatepassword(HttpServletRequest htt, @RequestParam("kuaikePhone") String kuaikePhone,
			@RequestParam("mobile_code") int mobile_code, @RequestParam("password") String password,ModelMap model,@PathVariable("i") String i) {
		// 通过手机找回密码 然后通过Md5加密
		String pwd = Md5Util.md5(password);
		// 调用重置密码的方法 对加密后的密码进行修改
		kuaiketabService.updateUserpass(pwd, kuaikePhone);
		// 清空验证码
		htt.getSession().removeAttribute("mobile_code");
		model.remove("mobile_code");

		//判断是否为移动端【APP】
		if("APP".equals(i)){
			// 返回页面
			return "APP/login";
			
		}
		// 返回页面
		return "PC/login";
	}

	/**
	 * PC 人工找回密码
	 * 
	 * @author 杨杰
	 * @created 2017年5月20日 上午11:35:15
	 * @param kuaikePhone
	 *            手机号码
	 * @return
	 */
	@RequestMapping(value = "findBackPassWord", method = RequestMethod.POST)
	public String findBackPassWord(@ModelAttribute("login") R_kuaiketab tab,@RequestParam("kuaikePhone") String kuaikePhone,
			@RequestParam("password") String password) {
		//对找回的密码进行加密处理
		String md5 = Md5Util.md5(password);
		//调用接口中的找回密码的方法 没有返回值
		kuaiketabService.findBackPassWord(md5, kuaikePhone);
		//修改登陆状态
		kuaiketabService.updateKuaikeStatus(R_kuaiketabStatusEnum.LX.ordinal(),tab.getKuaikeId());
		
		//找回成功返回初始页【登录页】
		return "PC/login";
	}

	/**
	 * PC 人工找回密码 填写个人资料信息
	 * 
	 * @author 杨杰
	 * @created 2017年5月24日 上午11:07:39
	 * @param map
	 *            map集合
	 * @param password
	 *            密码【重置密码】
	 * @param kuaikeName
	 *            快客姓名
	 * @param kuaikePhone
	 *            快客电话
	 * @param kuaikeAddress
	 *            快客地址
	 * @param kuaikeAddressInfo
	 *            快客详情地址【可选】
	 * @return 返回审核页面
	 */
	@RequestMapping(value = "updatePassword", method = RequestMethod.POST)
	public String updatePassword(ModelMap map, @RequestParam("password") String password,
			@RequestParam("kuaikeName") String kuaikeName, @RequestParam("kuaikePhone") String kuaikePhone,
			@RequestParam("kuaikeAddress") String kuaikeAddress,
			@RequestParam("kuaikeAddressInfo") String kuaikeAddressInfo) {
		//调用接口中 人工找回密码的方法
		kuaiketabService.updatePassword(password, kuaikeName, kuaikePhone, kuaikeAddress, kuaikeAddressInfo);
		//跳转到审核页面
		return "PC/toExamine";
	}

	/**
	 * PC 通过人工找回密码 【查询数据库中用户信息是否匹配】
	 * 
	 * @author 杨杰
	 * @created 2017年5月26日 上午10:08:10
	 * @param kuaikeName
	 *            快客姓名
	 * @param kuaikePhone
	 *            快客电话
	 * @param kuaikeAddress
	 *            快客地址
	 * @param kuaikeAddressInfo
	 *            快客详情【可选】
	 * @return 返回 0表示没有匹配数据 1表示有匹配数据
	 */
	@RequestMapping(value = "selectUpdatePasswordBykuaikeInfo", method = RequestMethod.POST)
	public String supw(@RequestParam("kuaikeName") String kuaikeName, @RequestParam("kuaikePhone") String kuaikePhone,
			@RequestParam("kuaikeAddress") String kuaikeAddress,
			@RequestParam(value = "kuaikeAddressInfo", required = false) String kuaikeAddressInfo,
			HttpServletRequest request,ModelMap model) {
		//调用人工找回密码的初始方法  填写个人基本信息和数据库中的数据进行匹配  并封装为一个实体对象
		R_kuaiketab sBykuaikeInfo = kuaiketabService.selectUpdatePasswordBykuaikeInfo(kuaikeName, kuaikePhone,
				kuaikeAddress, kuaikeAddressInfo);
		//进行判断
		if (sBykuaikeInfo != null) {
			//不为空  添加Session对象
			request.getSession().setAttribute("sBykuaikeInfo", sBykuaikeInfo);
			request.getSession().setAttribute("kuaikePhone", sBykuaikeInfo.getKuaikePhone());
			//跳转到审核页面
			return "PC/toExamine";

		}
		//为空  则 给出友好的提示 并回到找回密码的初始页面
		model.addAttribute("errorShow", ErrorShow.getLayerMsg(ErrorShow.SYS_MSG));
		return "PC/pwdRetrieval";
	}

	
	/**
	 * APP 端通过现有的手机号码 对以前的手机号码进行换绑处理  再找回密码进行申诉找回
	 * @author 杨杰     
	 * @created 2017年6月15日 下午4:21:55  
	 * @param model 集合对象
	 * @param newkuaikePhone  现有手机号
	 * @param kuaikeName  用户名称
	 * @param kuaikePhone  原有手机号
	 * @return
	 */
	@RequestMapping(value="/updatePasswordByAppeal",method=RequestMethod.POST)
	public String updatePasswordByAppeal(ModelMap model,
			@RequestParam("newkuaikePhone") String newkuaikePhone,
			@RequestParam("kuaikeName") String kuaikeName,
			@RequestParam("kuaikePhone") String kuaikePhone){
		//手机换绑
		int abc=kuaiketabService.updatePasswordByAppeal(newkuaikePhone, kuaikeName, kuaikePhone);
		//判断是否换绑成功
		if(abc>0){
			//查询现有手机号码 和用户民去修改密码
			R_kuaiketab tabo = kuaiketabService.selectPasswordBykuaikeInfo(kuaikeName, newkuaikePhone);
			model.addAttribute("tabo", tabo);
			model.remove("mobile_code");
			return "APP/resetPassword";
		 }
		
		model.remove("mobile_code");
		return "APP/appeal";
	}

	/**
	 * APP端 通过姓名和手机号找回密码
	 * @author 杨杰     
	 * @created 2017年6月16日 上午9:24:44  
	 * @param kuaikeName
	 * @param kuaikePhone
	 */
	@RequestMapping(value="/updatePwdByKNameAndKPhone",method=RequestMethod.POST)
	public String updatePasswordByKuaikeNameAndKuaikePhone(ModelMap model,@RequestParam("password") String password,@RequestParam("kuaikeName") String kuaikeName,@RequestParam("newkuaikePhone") String newkuaikePhone){
		
		//对密码进行加密处理
		String Md5password = Md5Util.md5(password);
		//得到用户名和手机号码  封装为对象
		R_kuaiketab tabo = kuaiketabService.selectPasswordBykuaikeInfo(kuaikeName, newkuaikePhone);
		//判断 实体对象是否为空 并且做出 项对应的操作
		if(tabo!=null && !"".equals(tabo)){
			//修改密码
			kuaiketabService.updatePasswordByKuaikeNameAndKuaikePhone(Md5password, kuaikeName, newkuaikePhone);
			//修改为离线状态
			kuaiketabService.updateKuaikeStatus(R_kuaiketabStatusEnum.LX.ordinal(), tabo.getKuaikeId());
			//修改成功返回登陆页
			return "APP/login";

		}
		//修改失败返回申诉页
		return "APP/appeal";
	};
	
	
	
	/**
	 * //根据 快客Id 删除快客信息
	 * 
	 * @author 杨杰
	 * @created 2017年5月20日 下午1:40:30
	 * @param map
	 *            集合对象
	 * @param kuaikeId
	 *            快客ID
	 * @return
	 */
	@RequestMapping(value = "deletetU/{kuaikeId}", method = RequestMethod.POST)
	@ResponseBody
	public int deletetU(Map<String, Object> map, @PathVariable("kuaikeId") String kuaikeId) {
		// 调用方法 并且返回一个INT 类型 0失败 1成功
		int deletetU = kuaiketabService.deletetU(kuaikeId);
		// 判断
		if (deletetU > 0) {
			return 1;
		}
		return 0;
	}

	/**
	 *APP 根据自己的Id查看自己的注册信息
	 * 
	 * @author 杨杰
	 * @created 2017年5月20 日 下午1:45:26
	 * @param kuaikeId
	 *            快客ID
	 * @param model
	 *            添加域 存入 集合对象
	 * @return
	 */
	@RequestMapping(value = "selectUser", method = RequestMethod.POST)
	public String selectUser(@PathVariable("kuaikeId") String kuaikeId, ModelMap model) {
		//调用查询方法 并把结果封装为一个对象
		R_kuaiketab selectUser = kuaiketabService.selectUser(kuaikeId);
		//判断对象是否为空
		if (selectUser != null) {
			//不为空 则添加到model对象中方便页面上取值
			model.addAttribute("selectUser", selectUser);
		}
		//为空 返回首页 说明用户没有注册成功
		return "PC/index";
	}

	/**
	 * PC ADN APP 快捷登陆 【根据手机号码直接接收验证码进行登陆】
	 * 
	 * @author 杨杰
	 * @created 2017年5月23日 上午9:37:00
	 * @param model
	 *            模型对象
	 * @param kuaikePhone
	 *            手机号码
	 * @param phoeCode
	 *            验证码
	 * @return
	 */
	@RequestMapping(value = "phoneLogin/{i}", method = RequestMethod.GET)
	public String phoneLogin(ModelMap model, @RequestParam("kuaikePhone") String kuaikePhone,
			@RequestParam("mobile_code") int mobile_code, HttpServletRequest request,@PathVariable("i") String i) {

		
		//得到请求方法，并且添加到实体对象中
		R_kuaiketab phoneLogin = kuaiketabService.phoneLogin(kuaikePhone);
		//判断 登录对象是否为空
		if (phoneLogin != null) {
			//将用户信息添加到model对象中
			model.addAttribute("login", phoneLogin);
			//用户登录电话
			model.addAttribute("uname",phoneLogin.getKuaikePhone());
			request.getSession().setAttribute("uname", phoneLogin.getKuaikePhone());
			//用户名
			request.getSession().setAttribute("namea", phoneLogin.getKuaikeName());
			
			//登陆成功 修改状态为2 【在线】
			
			kuaiketabService.updateKuaikeStatus(R_kuaiketabStatusEnum.ZX.ordinal(),phoneLogin.getKuaikeId());
			
			//清空文本框中的验证码
			request.getSession().removeAttribute("mobile_code");
			model.remove("mobile_code");
			//判断是否为手机端
			if("APP".equals(i)){
				
				return "APP/index";
				
			}
			//返回首页
			return "PC/index";

		}else if("APP".equals(i)){
			
			//清空文本框中的验证码
			request.getSession().removeAttribute("mobile_code");
			model.remove("mobile_code");
			//给出友好的提示语
			model.addAttribute("errorShow", ErrorShow.getLayerMsg(ErrorShow.SYS_ERROR));
			//登录失败返回登录页面
			return "APP/login";
		}else{
			//清空文本框中的验证码
			request.getSession().removeAttribute("mobile_code");
			model.remove("mobile_code");
			//给出友好的提示语
			model.addAttribute("errorShow", ErrorShow.getLayerMsg(ErrorShow.SYS_ERROR));
			//登录失败返回登录页面
			return "PC/login";
			
		}
		
	}

	/**
	 * PC AND APP手机接收验证码
	 * 
	 * @author 杨杰
	 * @created 2017年5月23日 下午2:30:33
	 * @param request 发送的请求 【Ajax请求】
	 * @return 返回的参数【mobile_code】
	 */
	//接口类型：互亿无线触发短信接口，支持发送验证码短信、订单通知短信等。
	// 账户注册：请通过该地址开通账户http://sms.ihuyi.com/register.html
	// 注意事项：
	//（1）调试期间，请用默认的模板进行测试，默认模板详见接口文档；
	//（2）请使用APIID（查看APIID请登录用户中心->验证码、通知短信->帐户及签名设置->APIID）及 APIkey来调用接口，APIkey在会员中心可以获取；
	//（3）该代码仅供接入互亿无线短信接口参考使用，客户可根据实际需要自行编写；
	//参数提供：APIID=C15966497  APIKey=7704db8af7077a575156df62475249ab
	//初始化 短息请求接口
	private static String Url = "http://106.ihuyi.cn/webservice/sms.php?method=Submit";
	@RequestMapping(value = "getCode/{kuaikePhone}", method = RequestMethod.POST)
	@ResponseBody
	public int getCode(@PathVariable("kuaikePhone") String kuaikePhone,HttpServletRequest request) {
		//请求体
		//协议
		HttpClient client = new HttpClient();
		//方法路径
		PostMethod method = new PostMethod(Url);
		//请求编码
		client.getParams().setContentCharset("GBK");
		//请求头
		method.setRequestHeader("ContentType", "application/x-www-form-urlencoded;charset=GBK");
		//随机码
		int mobile_code = (int) ((Math.random() * 9 + 1) * 100000);
		//手机接收短信
		String content = new String("您的验证码是：" + mobile_code + "。请不要把验证码泄露给其他人。");

		
		NameValuePair[] data = { // 提交短信
				new NameValuePair("account", "C15966497"), // 查看用户名请登录用户中心->验证码、通知短信->帐户及签名设置->APIID
				new NameValuePair("password", "7704db8af7077a575156df62475249ab"), // 查看密码请登录用户中心->验证码、通知短信->帐户及签名设置->APIKEY
				// new NameValuePair("password",
				// util.StringUtil.MD5Encode("密码")),
				new NameValuePair("mobile", kuaikePhone), new NameValuePair("content", content), };
		method.setRequestBody(data);
		//打印验证码

		try {
			client.executeMethod(method);

			String SubmitResult = method.getResponseBodyAsString();
			
			Document doc = DocumentHelper.parseText(SubmitResult);
			Element root = doc.getRootElement();
			
			//初始化提交参数
			String code = root.elementText("code");
			String msg = root.elementText("msg");
			String smsid = root.elementText("smsid");
			//打印返回的参数  code状态  msg提示语 smsid错误信息
			//判断状态码是否为2 表示成功状态
			if ("2".equals(code)) {
				System.out.println("短信提交成功");
			}

		} catch (HttpException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//添加验证码到Session域中 并返回 验证码
 		request.getSession().setAttribute("mobile_code", mobile_code);
		return mobile_code;

	}
	

	
	/**
	 * PC 根据快客Id修改手机号码
	 * 
	 * @author 杨杰
	 * @created 2017年6月1日 下午4:31:20
	 * @param kuaikeId
	 *            快客ID
	 * @param kuaikePhone
	 *            快客手机号码
	 * @return 返回成功页面
	 */
	@RequestMapping(value = "updatePhoneById", method = RequestMethod.POST)
	public String updatePhoneById(@ModelAttribute("login") R_kuaiketab kuaiketab,
			@RequestParam("kuaikeId") String kuaikeId, @RequestParam("kuaikePhone") String kuaikePhone,
			HttpServletRequest http,ModelMap model) {
		//调用修改手机号码的方法
		kuaiketabService.updatePhoneById(kuaikePhone, kuaikeId);
		//清空登录对象中的实体对象
		http.getSession().removeAttribute("login");
		//清空文本框中的验证码
		http.getSession().removeAttribute("mobile_code");
		model.remove("mobile_code");
		//返回到个人中心
		return "PC/personalCenter";
	}
	
	/**
	 * APP 根据原有手机号和密码修改手机号码
	 * @author 杨杰     
	 * @created 2017年6月18日 上午12:12:28  
	 * @param regPhone 现有手机号
	 * @param lastPhone  原有手机号
	 * @param pass  密码
	 * @return
	 */
	@RequestMapping(value="/updatePhoneBykuaikePhoneAndPassword",method=RequestMethod.POST)
	public String updatePhoneBykuaikePhoneAndPassword(@ModelAttribute("login") R_kuaiketab ktab,
			HttpSession session,SessionStatus sessionStatus,
			@RequestParam("regPhone") String regPhone,
			@RequestParam("lastPhone") String lastPhone,
			@RequestParam("password") String password){
		
		//密码加密
		String pass = Md5Util.md5(password);
		
		boolean flag=kuaiketabService.updatePhoneBykuaikePhoneAndPassword(regPhone,lastPhone,pass);
		
		if(flag){
			
			//清空Session域中的所有对象以及初始化 Session
			session.removeAttribute("login");
			//初始化Session
			session.invalidate();
			sessionStatus.setComplete();
			//返回初始页【登录页】
			return "APP/login";
			
		}
		
		return "APP/modifyCellPhoneNumber";
	}
	
	
	/**
	 * APP 根据快客Id 和 原密码 对快客密码进行修改
	 * @author 杨杰     
	 * @created 2017年6月18日 上午1:01:30  
	 * @param newPassword 新密码
	 * @param kuaikeID   快客Id
	 * @param password  原密码
	 */
	@RequestMapping(value="/updatePassWordByOldPassword",method=RequestMethod.POST)
	public String updatePassWordByOldPassword(
			HttpSession session,SessionStatus sessionStatus,
			@RequestParam("newPassword") String newPassword, 
			@RequestParam("kuaikeId") String kuaikeId, 
			@RequestParam("password") String password) {
			
			String oldPass = Md5Util.md5(password);
			String passstr = Md5Util.md5(newPassword);
			
			int newpass = kuaiketabService.updatePassWordByOldPassword(passstr, kuaikeId, oldPass);
			if(newpass>0){
				//清空Session域中的所有对象以及初始化 Session
				session.removeAttribute("login");
				//初始化Session
				session.invalidate();
				sessionStatus.setComplete();
				//返回初始页【登录页】
				return "APP/login";
				
			}
			
			return "APP/modifyPassword";
		}

}
