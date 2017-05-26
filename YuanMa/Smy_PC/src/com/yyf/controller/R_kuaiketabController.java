package com.yyf.controller;

import java.io.File;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sun.xml.xsom.impl.scd.Iterators.Map;
import com.yyf.model.R_kuaiketab;
import com.yyf.service.R_kuaiketabService;
import com.yyf.util.Md5Util;

/**
 * 文件名：R_kuaiketabController.java 描述： 用户登陆注册 修改人： 杨杰 修改时间：2017年5月18日 下午3:46:47
 * 修改内容：
 */
@Controller
public class R_kuaiketabController {

	/* 添加依赖注入 */
	@Autowired
	private R_kuaiketabService kuaiketabService;

	String emg = "你错了";

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
		tab.setKuaikeStatus(0);
		kuaiketabService.addUser(tab);

		return "PC/shenhe";
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
	 * 用户根据用户名&密码登陆 一句话
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
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam(value = "repassword", required = false) String repassword,
			@RequestParam("kuaikePhone") String uname, @RequestParam("password") String password,
			HttpServletRequest request) throws NoSuchAlgorithmException {
		/* 调用登陆方法 & 并封装为实体对象 */
		// 进行Md5加密
		String newPass = Md5Util.md5(password); // 调用登陆方法，并封装为对象
		R_kuaiketab login = kuaiketabService.login(uname, newPass);

		// 简单判断对象是否为空
		if (login != null) {
			if ("on".equals(repassword)) {
				// 记住登陆用户名，手机号码和密码
				request.getSession().setAttribute("uname", uname);
				request.getSession().setAttribute("newPass", password);
				request.getSession().setAttribute("namea", login.getKuaikeName());

			} else {
				// 清空Session中的用户电话号码 和密码信息
				request.getSession().removeAttribute("uname");
				request.getSession().removeAttribute("newPass");
				// 保存登陆用户的姓名 以便于 提示谁还在登陆该网站
				request.getSession().setAttribute("namea", login.getKuaikeName());
			}
			// 返回成功页面
			return "PC/index";
		}
		// 留在登陆页面
		return "PC/login";
	}

	/**
	 * 快客重置密码
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
	@RequestMapping(value = "reupdatepass", method = RequestMethod.POST)
	public String updatepassword(ModelMap model, @RequestParam("kuaikePhone") String kuaikePhone,
			@RequestParam("phoneCode") int phoneCode, @RequestParam("password") String password) {

		// 通过手机找回密码 然后通过Md5加密
		String pwd = Md5Util.md5(password);
		// 调用重置密码的方法 对加密后的密码进行修改
		int updateUserpass = kuaiketabService.updateUserpass(pwd, kuaikePhone);

		if (updateUserpass > 0) {
			System.out.println(updateUserpass);
			System.out.println(pwd + "===================================");
		}

		return "PC/login";
	}

	/**
	 * 根据手机号码找回密码
	 * 
	 * @author 杨杰
	 * @created 2017年5月20日 上午11:35:15
	 * @param kuaikePhone
	 *            手机号码
	 * @return
	 */
	@RequestMapping(value = "findBackPassWord", method = RequestMethod.POST)
	public String findBackPassWord(@RequestParam("kuaikePhone") String kuaikePhone,@RequestParam("password") String password) {
		
		String md5 = Md5Util.md5(password);
		System.out.println(kuaikePhone+"1111111111111111111111111111111111111111");
		kuaiketabService.findBackPassWord(md5, kuaikePhone);
			
		return "PC/login";
	}

	/**
	 * 人工找回密码
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

		kuaiketabService.updatePassword(password, kuaikeName, kuaikePhone, kuaikeAddress, kuaikeAddressInfo);

		return "PC/shenhe";
	}

	/**
	 * 通过人工找回密码  【查询数据库中用户信息是否匹配】
	 * @author 杨杰     
	 * @created 2017年5月26日 上午10:08:10  
	 * @param kuaikeName  快客姓名
	 * @param kuaikePhone  快客电话
	 * @param kuaikeAddress  快客地址
	 * @param kuaikeAddressInfo  快客详情【可选】
	 * @return  返回 0表示没有匹配数据  1表示有匹配数据
	 */
	@RequestMapping(value = "selectUpdatePasswordBykuaikeInfo", method = RequestMethod.POST)
	public String supw(@RequestParam("kuaikeName") String kuaikeName, @RequestParam("kuaikePhone") String kuaikePhone,
			@RequestParam("kuaikeAddress") String kuaikeAddress,
			@RequestParam(value = "kuaikeAddressInfo", required = false) String kuaikeAddressInfo,HttpServletRequest request) {

		R_kuaiketab sBykuaikeInfo = kuaiketabService.selectUpdatePasswordBykuaikeInfo(kuaikeName, kuaikePhone, kuaikeAddress,
				kuaikeAddressInfo);
		if (sBykuaikeInfo!=null) {
			request.getSession().setAttribute("sBykuaikeInfo", sBykuaikeInfo);
			request.getSession().setAttribute("kuaikePhone",sBykuaikeInfo.getKuaikePhone());
			
			return "PC/shenhe";
			
		}
		return "PC/zhaohuimima";
	}

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

		int deletetU = kuaiketabService.deletetU(kuaikeId);
		if (deletetU > 0) {
			System.out.println("删除成功");
			return 1;
		}
		return 0;
	}

	/**
	 * 根据自己的Id查看自己的注册信息
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
		R_kuaiketab selectUser = kuaiketabService.selectUser(kuaikeId);

		if (selectUser != null) {

			model.addAttribute("selectUser", selectUser);
		}

		return "PC/index";
	}

	/**
	 * 快捷登陆 【根据手机号码直接接收验证码进行登陆】
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
	@RequestMapping(value = "phoneLogin", method = RequestMethod.POST)
	public String phoneLogin(ModelMap model, @RequestParam("kuaikePhone") String kuaikePhone,
			@RequestParam("phoneCode") int phoneCode) {

		System.out.println(kuaikePhone + "\t" + phoneCode);

		R_kuaiketab phoneLogin = kuaiketabService.phoneLogin(kuaikePhone);

		if (phoneLogin != null) {

			return "PC/index";

		}
		return "error";
	}

	/**
	 * 手机接收验证码
	 * 
	 * @author 杨杰
	 * @created 2017年5月17日 下午7:06:21
	 * @param phone_r
	 *            手机号
	 * @throws Exception
	 */
	@RequestMapping(value = "/sendCode")
	@ResponseBody
	public void getCode(@RequestParam("kuaikePhone") String phone_r) throws Exception {

		// 测试是否到了手机号码
		System.out.println("---------------------" + phone_r);
		// 产生6位随机数 组合为验证码
		String code = RandomStringUtils.randomNumeric(6);
		// 给出提示 ，发送到 手机上
		String messsageText = "亲----- 你的验证码是" + code + "60秒后请重新获取";

		// 发送短信的核心
		HttpClient client = new HttpClient();
		// 提供服务提交 到网络
		PostMethod post = new PostMethod("http://utf8.sms.webchinese.cn/");
		// 简单的添加 请求 头
		post.addRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf8");// 在头文件中设置转码

		// 发送的参数
		NameValuePair[] data = { new NameValuePair("Uid", "zuxia_liu"),
				new NameValuePair("Key", "61501c6edf6c63cbde8a"), new NameValuePair("smsMob", phone_r),
				new NameValuePair("smsText", messsageText) };
		// 请求体
		post.setRequestBody(data);

		client.executeMethod(post);

		// 设置编码
		String result = new String(post.getResponseBodyAsString().getBytes("utf8"));
		// 返回//打印返回消息状态
		System.out.println("发送的状态------>" + result);
	}

	/**
	 * 模拟手机接收验证码
	 * 
	 * @author 杨杰
	 * @created 2017年5月23日 下午2:30:33
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "getCode", method = RequestMethod.POST)
	@ResponseBody
	public int getCode(HttpServletRequest request) {
		// 产生6位随机数 充当验证码
		int phoneCode = (int) ((Math.random() * 9 + 1) * 100000);// 6位
		// 存入Session域中
		request.getSession().setAttribute("phoneCode", phoneCode);
		// 返回验证码
		return phoneCode;

	}

}
