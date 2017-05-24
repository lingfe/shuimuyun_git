package com.yyf.controller;

import java.io.File;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
		// 测试是否得到密码
		System.out.println(password);

		// 进行Md5加密
		String newPass = Md5Util.md5(password);		// 调用登陆方法，并封装为对象
		R_kuaiketab login = kuaiketabService.login(uname, newPass);

		// 简单判断对象是否为空
		if (login != null) {
			if ("on".equals(repassword)) {

				System.out.println(repassword);
				request.getSession().setAttribute("uname", uname);

				request.getSession().setAttribute("newPass", password);

			} else {

				request.getSession().removeAttribute("uname");
				request.getSession().removeAttribute("newPass");
			}
			// 简单测试
			System.out.println(login + "欢迎来到这里看到用户名和密码 ");

			// 返回成功页面
			return "PC/index";
		}
		request.getSession().setAttribute("emg", emg);
		// 返回失败页面
		return null;
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

		int updateUserpass = kuaiketabService.updateUserpass(password, kuaikePhone);
		if (updateUserpass > 0) {
			System.out.println(updateUserpass);
		}

		return "PC/zhaohuimima";
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
	@SuppressWarnings("null")
	@RequestMapping(value = "findBackPassWord", method = RequestMethod.POST)
	public R_kuaiketab findBackPassWord(@RequestParam("kuaikePhone") String kuaikePhone) {

		R_kuaiketab kuaiketab = new R_kuaiketab();
		String regExp = "^((13[0-9])|(15[^4])|(18[0,2,3,5-9])|(17[0-8])|(147))\\d{8}$";
		Pattern p = Pattern.compile(regExp);
		Matcher matcher = p.matcher(kuaikePhone);
		if (matcher.find() == true) {
			kuaiketab = kuaiketabService.selectAll(kuaikePhone);
			if (kuaiketab != null) {
				kuaiketab.setKuaikeStatus(3);
			} else {
				kuaiketab.setKuaikeStatus(4);
			}
		} else {
			kuaiketab.setKuaikeStatus(4);
		}
		return kuaiketab;
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
		java.util.Random rcode = new java.util.Random();

		int phoneCode = rcode.nextInt(1000000);// 6位

		System.out.println(phoneCode);

		request.getSession().setAttribute("phoneCode", phoneCode);

		return phoneCode;

	}

}
