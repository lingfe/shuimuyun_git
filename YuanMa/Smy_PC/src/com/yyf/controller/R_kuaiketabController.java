package com.yyf.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.PathVariable;
=======
>>>>>>> ae7d28f39d398a5bb3ab4b261f96640d1d3da268
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.SessionAttributes;
=======
import org.springframework.web.multipart.MultipartFile;
>>>>>>> ae7d28f39d398a5bb3ab4b261f96640d1d3da268

import com.yyf.model.R_kuaiketab;
import com.yyf.service.R_kuaiketabService;

/**
 * 文件名：R_kuaiketabController.java 描述： 用户登陆注册 修改人： 杨杰 修改时间：2017年5月18日 下午3:46:47
 * 修改内容：
 */
@Controller
@SessionAttributes("r_kuaiketab")
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
<<<<<<< HEAD
	 * @author 杨杰     
	 * @created 2017年5月17日 下午7:12:24  
	 * @param s 时间字符串
	 * @return  返回时间处理格式  的时间字符串
	 */
	public static String stampToDate(String s){
        String res;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        long lt = new Long(s);
        Date date = new Date(lt);
        res = simpleDateFormat.format(date);
        return res;
    }
	
=======
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

>>>>>>> ae7d28f39d398a5bb3ab4b261f96640d1d3da268
	/**
	 * 用户根据用户名&密码登陆 
	 * @author 杨杰
	 * @created 2017年5月5日 下午4:25:52
	 * @param kuaikePhone
	 *            用户名 手机号
	 * @param upass
	 *            密码
	 * @return 返回成功页面
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("kuaikePhone") String kuaikePhone, @RequestParam("password") String password,
			HttpServletRequest request,ModelMap model) {
		/* 调用登陆方法 & 并封装为实体对象 */
		R_kuaiketab r_kuaiketab = kuaiketabService.login(kuaikePhone, password);

		if(r_kuaiketab!=null){
			
			model.addAttribute("r_kuaiketab", r_kuaiketab);
			
			return "MyJsp";
		}
		return "login";
	}
	
	/**
	 * 快客重置密码
	 * @author 杨杰     
	 * @created 2017年5月20日 上午11:19:34  
	 * @param map   集合对象
	 * @param kuaikePhone  手机号
	 * @param senCode      验证码
	 * @param password     密码
	 * @return             返回对象
	 */
	@RequestMapping(value = "reupdatepass", method = RequestMethod.POST)
	public R_kuaiketab updatepassword(Map<String, Object> map,
				@RequestParam("kuaikePhone") String kuaikePhone,
				@RequestParam("senCode") int senCode,
				@RequestParam("password") String password) {
		
			R_kuaiketab kuaiketab=new R_kuaiketab();
			// 验证手机号码---仅限大陆地区手机号码
			String regExp = "^((13[0-9])|(15[^4])|(18[0,2,3,5-9])|(17[0-8])|(147))\\d{8}$";
			Pattern p = Pattern.compile(regExp);
			Matcher matcher = p.matcher(kuaikePhone);
			// 手机号码通过验证 验证密码
			if (matcher.find() == true) {
				// 验证两次输入密码是否一致
				if (senCode == 85976) {
					int update =kuaiketabService.updateUserpass(password, kuaikePhone);
					if (update >= 1) {
						//如果 重置密码成功  修改状态为3 处于登陆状态
						//R_kuaiketab k1=new R_kuaiketab();
						kuaiketab.setKuaikeStatus(3);
					} else {
						//如果未成功 则修改状态为 4 表示为离线状态
						//R_kuaiketab  k2= new R_kuaiketab();
						kuaiketab.setKuaikeStatus(4);
					}
				} else {
					//如果手机验证码未通过 修改状态为4  也是处于一个离线状态
					//R_kuaiketab  k3= new R_kuaiketab();
					kuaiketab.setKuaikeStatus(4);
				}

			} else {
				//R_kuaiketab  k4= new R_kuaiketab();
				kuaiketab.setKuaikeStatus(4);
			}
			return kuaiketab;
		}

<<<<<<< HEAD
	/**
	 * 根据手机号码找回密码
	 * @author 杨杰     
	 * @created 2017年5月20日 上午11:35:15  
	 * @param kuaikePhone 手机号码
	 * @return
	 */
	@SuppressWarnings("null")
	@RequestMapping(value="findBackPassWord",method=RequestMethod.POST)
	public R_kuaiketab  findBackPassWord(@RequestParam("kuaikePhone") String kuaikePhone){
	
		R_kuaiketab kuaiketab=new R_kuaiketab();
		String regExp = "^((13[0-9])|(15[^4])|(18[0,2,3,5-9])|(17[0-8])|(147))\\d{8}$";
		Pattern p = Pattern.compile(regExp);
		Matcher matcher = p.matcher(kuaikePhone);
		if (matcher.find() == true) {
			 kuaiketab = kuaiketabService.selectAll(kuaikePhone);
			if(kuaiketab!=null){
				kuaiketab.setKuaikeStatus(3);
			}else{
				kuaiketab.setKuaikeStatus(4);
			}
		} else {
			kuaiketab.setKuaikeStatus(4);
		}
		return kuaiketab;
	}
	
	
	//根据 快客Id 删除快客信息

	/**
	 * //根据 快客Id 删除快客信息
	 * @author 杨杰     
	 * @created 2017年5月20日 下午1:40:30  
	 * @param map 集合对象
	 * @param kuaikeId  快客ID
	 * @return
	 */
	@RequestMapping(value="deletetU/{kuaikeId}",method=RequestMethod.POST)
	@ResponseBody
	public int deletetU(Map<String, Object> map,@PathVariable("kuaikeId") String kuaikeId){
		
		int deletetU = kuaiketabService.deletetU(kuaikeId);
		if(deletetU>0){
			System.out.println("删除成功");
			return 1;
		}
		return 0;
	}
	
	/**
	 * 根据自己的Id查看自己的注册信息
	 * @author 杨杰     
	 * @created 2017年5月20 日 下午1:45:26  
	 * @param kuaikeId 快客ID
	 * @param model 添加域  存入 集合对象
	 * @return
	 */
	@RequestMapping(value="selectUser",method=RequestMethod.POST)
	public String selectUser(@PathVariable("kuaikeId") String kuaikeId,ModelMap model) {
		R_kuaiketab selectUser = kuaiketabService.selectUser(kuaikeId);
		
		if(selectUser!=null){
			
			model.addAttribute("selectUser", selectUser);
		}
		
		return "index";
	}
	
	
	/**
	 * 用户注册
	 * @author 杨杰     
	 * @created 2017年5月17日 下午7:05:08  
	 * @param kuaikeName 姓名
	 * @param kuaikePhone 电话
	 * @param kuaikeAddress 地址
	 * @param kuaikeShenfenF 身份证反面图片路径
	 * @param kuaikeShenFenZ 身份证正面图片路径
	 * @param kuaikeShouchiSFZ 身份证正反面图片路径
	 * @param password 密码
	 * @return  返回页面
	 */
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(
			@RequestParam("kuaikeName") String kuaikeName,
			@RequestParam("kuaikePhone") String kuaikePhone, 
			@RequestParam("kuaikeAddress") String kuaikeAddress,
			@RequestParam("kuaikeShenfenZF") String kuaikeShenfenZF,
			@RequestParam("kuaikeShouchiSFZ") String kuaikeShouchiSFZ,
			@RequestParam("password") String password) {

		//得到唯一的ID
=======
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
>>>>>>> ae7d28f39d398a5bb3ab4b261f96640d1d3da268
		UUID uuid1 = UUID.randomUUID();
		// 强制转换
		String uuid = uuid1.toString();
		System.out.println(uuid);
		/* 实例化用户名实体对象 对添加用户信息进行封装 */
		R_kuaiketab kuaiketab = new R_kuaiketab(uuid, kuaikeName, kuaikePhone, kuaikeAddress,
				kuaikeShenfenZF, kuaikeShouchiSFZ, 0, new Date(), password, new Date());
<<<<<<< HEAD
		
=======

>>>>>>> ae7d28f39d398a5bb3ab4b261f96640d1d3da268
		/* 封装 */
		kuaiketabService.addUser(kuaiketab);
		/* 简单测试是否注册成功 */
		System.out.println(kuaiketab + "欢迎来到这里看到用户名和密码 ");
		/* 返回页面 */
		return "MyJsp";

	}

	/**
<<<<<<< HEAD
	 *手机接收验证码
	 * @author 杨杰     
	 * @created 2017年5月17日 下午7:06:21  
	 * @param phone_r 手机号
	 * @throws Exception  异常抛出
=======
	 * 手机接收验证码
	 * 
	 * @author 杨杰
	 * @created 2017年5月17日 下午7:06:21
	 * @param phone_r
	 *            手机号
	 * @throws Exception
>>>>>>> ae7d28f39d398a5bb3ab4b261f96640d1d3da268
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

		// 发送短信的核心 HTTP交互协议
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

		//执行请求方法
		client.executeMethod(post);

		// 设置编码
		String result = new String(post.getResponseBodyAsString().getBytes("utf8"));
		// 返回//打印返回消息状态
		System.out.println("发送的状态------>" + result);
	}

}
