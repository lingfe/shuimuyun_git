package com.yyf.controller;

import java.io.File;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.yyf.model.R_kuaiketab;
import com.yyf.service.R_kuaiketabService;

/**
 * 文件名：R_kuaiketabController.java 描述： 用户登陆注册 修改人： 杨杰 修改时间：2017年5月18日 下午3:46:47
 * 修改内容：
 */
@Controller
public class R_kuaiketabController {

	/* 添加依赖注入 */
	@Autowired
	private R_kuaiketabService kuaiketabService;

	/**
	 * 
	 * 快客申请，包含身份证复印件文件，手持身份证照片
	 * @author 	lijie
	 * @created 2017年5月19日 上午10:52:11
	 * @param 	file1身份证复印件文件
	 * @param 	file2手持身份证照片
	 * @param 	request请求
	 * @param 	model响应
	 * @param 	tab实体类
	 * @return	URL
	 */
	@RequestMapping(value = "/upload.do",method=RequestMethod.POST)
	public String upload(@RequestParam(value = "file1", required = false) MultipartFile file1,
			@RequestParam(value = "file2", required = false) MultipartFile file2, HttpServletRequest request,
			ModelMap model, R_kuaiketab tab) {
		// 获取到当前服务器项目的跟路径
		String path = request.getSession().getServletContext().getRealPath("upload");
		// 文件1
		String fileName1 = file1.getOriginalFilename();
		// System.out.println(path);
		// System.out.println(request.getContextPath());
		// System.out.println(fileName1);
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
		// 身份证复印件文件
		tab.setkuaikeShenfenZ(request.getContextPath() + "/upload/" + fileName1);
		// 手拿身份证图片
		tab.setKuaikeShouchiSFZ(request.getContextPath() + "/upload/" + fileName2);
		// 登录时间
		tab.setLoginDate(new Date());
		// 状态,默认
		tab.setKuaikeStatus(0);

		kuaiketabService.addUser(tab);

		model.addAttribute("fileUrl1", request.getContextPath() + "/upload/" + fileName1);
		model.addAttribute("fileUrl2", request.getContextPath() + "/upload/" + fileName2);

		return "result";
	}

	public String uploadFile() {

		return "index";
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
	 * 用户根据用户名&密码登陆 一句话 方法的功能描述
	 * 
	 * @author 杨杰
	 * @created 2017年5月5日 下午4:25:52
	 * @param uname
	 *            用户名 手机号
	 * @param upass
	 *            密码
	 * @return 返回成功页面
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("kuaikeName") String uname, @RequestParam("password") String password) {
		/* 调用登陆方法 & 并封装为实体对象 */
		R_kuaiketab login = kuaiketabService.login(uname, password);

		// 简单判断对象是否为空
		if (login != null) {
			// 简单测试
			System.out.println(login + "欢迎来到这里看到用户名和密码 ");
			// 返回成功页面
			return "MyJsp";
		}
		// 返回失败页面
		return "flge";
	}

	/**
	 * 用户注册
	 * 
	 * @author 杨杰
	 * @created 2017年5月17日 下午7:05:08
	 * @param kuaikeName
	 *            姓名
	 * @param kuaikePhone
	 *            电话
	 * @param kuaikeAddress
	 *            地址
	 * @param kuaikeShenfenF
	 *            身份证反面图片路径
	 * @param kuaikeShenFenZ
	 *            身份证正面图片路径
	 * @param kuaikeShouchiSFZ
	 *            身份证正反面图片路径
	 * @param password
	 *            密码
	 * @return
	 */
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(@RequestParam("kuaikeName") String kuaikeName,
			@RequestParam("kuaikePhone") String kuaikePhone, @RequestParam("kuaikeAddress") String kuaikeAddress,
			@RequestParam("kuaikeShenfenZ") String kuaikeShenfenZF,
			@RequestParam("kuaikeShouchiSFZ") String kuaikeShouchiSFZ, @RequestParam("password") String password) {

		// 得到唯一的ID
		UUID uuid1 = UUID.randomUUID();
		// 强制转换
		String uuid = uuid1.toString();
		System.out.println(uuid);
		/* 实例化用户名实体对象 对添加用户信息进行封装 */
		R_kuaiketab kuaiketab = new R_kuaiketab(uuid, kuaikeName, kuaikePhone, kuaikeAddress,
				kuaikeShenfenZF, kuaikeShouchiSFZ, 0, new Date(), password, new Date());

		/* 封装 */
		kuaiketabService.addUser(kuaiketab);
		/* 简单测试是否注册成功 */
		System.out.println(kuaiketab + "欢迎来到这里看到用户名和密码 ");
		/* 返回页面 */
		return "MyJsp";

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

}
