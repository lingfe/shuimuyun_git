package com.yyf.controller;

import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import com.yyf.service.R_kuaiketabService;
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
			HttpServletRequest request, ModelMap model) throws NoSuchAlgorithmException {
		/* 调用登陆方法 & 并封装为实体对象 */
		// 进行Md5加密
		String newPass = Md5Util.md5(password); // 调用登陆方法，并封装为对象
		R_kuaiketab login = kuaiketabService.login(uname, newPass);

		// 简单判断对象是否为空
		if (login != null) {
			model.addAttribute("login", login);

			if ("on".equals(repassword)) {
				// 记住登陆用户名，手机号码和密码
				request.getSession().setAttribute("uname", uname);
				request.getSession().setAttribute("newPass", password);
				request.getSession().setAttribute("namea", login.getKuaikeName());
				request.getSession().setAttribute("kuaikeId", login.getKuaikeId());

			} else {
				// 清空Session中的用户电话号码 和密码信息
				request.getSession().setAttribute("uname", uname);
				request.getSession().removeAttribute("newPass");
				// 保存登陆用户的姓名 以便于 提示谁还在登陆该网站
				request.getSession().setAttribute("namea", login.getKuaikeName());
				request.getSession().setAttribute("kuaikeId", login.getKuaikeId());
			}
			// 返回成功页面
			return "PC/index";
		}
		model.addAttribute("errorShow", ErrorShow.getAlert(ErrorShow.SYS_ERROR));
		// 留在登陆页面
		return "PC/login";
	}

	/**
	 * 注销登录
	 * 
	 * @author YangJie
	 * @created 2017年6月2日 上午11:03:45
	 * @param request
	 *            请求
	 * @return
	 */
	@RequestMapping(value = "loginOut", method = RequestMethod.GET)
	public String loginOut(HttpSession session,SessionStatus sessionStatus) {

		// 得到Session对象 并初始为False
	
		// 判断Session是否为空
		if (session == null) {

			session.removeAttribute("login");
			session.invalidate();
			sessionStatus.setComplete();

			return "PC/login";

		}
		session.removeAttribute("login");
	
		session.invalidate();
		sessionStatus.setComplete();

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
	public String updatepassword(HttpServletRequest htt, @RequestParam("kuaikePhone") String kuaikePhone,
			@RequestParam("mobile_code") int mobile_code, @RequestParam("password") String password) {

		// 通过手机找回密码 然后通过Md5加密
		String pwd = Md5Util.md5(password);
		// 调用重置密码的方法 对加密后的密码进行修改
		kuaiketabService.updateUserpass(pwd, kuaikePhone);
		// 清空验证码
		htt.getSession().removeAttribute("mobile_code");

		// 返回页面
		return "PC/login";
	}

	/**
	 * 人工找回密码
	 * 
	 * @author 杨杰
	 * @created 2017年5月20日 上午11:35:15
	 * @param kuaikePhone
	 *            手机号码
	 * @return
	 */
	@RequestMapping(value = "findBackPassWord", method = RequestMethod.POST)
	public String findBackPassWord(@RequestParam("kuaikePhone") String kuaikePhone,
			@RequestParam("password") String password) {

		String md5 = Md5Util.md5(password);

		kuaiketabService.findBackPassWord(md5, kuaikePhone);

		return "PC/login";
	}

	/**
	 * 人工找回密码 填写个人资料信息
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

		return "PC/toExamine";
	}

	/**
	 * 通过人工找回密码 【查询数据库中用户信息是否匹配】
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
			HttpServletRequest request) {

		R_kuaiketab sBykuaikeInfo = kuaiketabService.selectUpdatePasswordBykuaikeInfo(kuaikeName, kuaikePhone,
				kuaikeAddress, kuaikeAddressInfo);

		if (sBykuaikeInfo != null) {
			request.getSession().setAttribute("sBykuaikeInfo", sBykuaikeInfo);
			request.getSession().setAttribute("kuaikePhone", sBykuaikeInfo.getKuaikePhone());

			return "PC/toExamine";

		}
		return "PC/pwdRetrieval";
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
		// 调用方法 并且返回一个INT 类型 0失败 1成功
		int deletetU = kuaiketabService.deletetU(kuaikeId);
		// 判断
		if (deletetU > 0) {
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
			@RequestParam("mobile_code") int mobile_code, HttpServletRequest request) {

		//得到请求方法，并且添加到实体对象中
		R_kuaiketab phoneLogin = kuaiketabService.phoneLogin(kuaikePhone);
		//判断 登录对象是否为空
		if (phoneLogin != null) {
			//将用户信息添加到model对象中
			model.addAttribute("login", phoneLogin);
			//用户登录电话
			model.addAttribute("uname",phoneLogin.getKuaikePhone());
			//用户名
			request.getSession().setAttribute("namea", phoneLogin.getKuaikeName());
			//移除验证码
			request.getSession().removeAttribute("mobile_code");
			//返回首页
			return "PC/index";

		}
		//登录失败返回登录页面
		return "PC/login";
	}

	/**
	 * 模拟手机接收验证码
	 * 
	 * @author 杨杰
	 * @created 2017年5月23日 下午2:30:33
	 * @param request
	 * @return
	 */
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
		System.out.println(mobile_code);

		try {
			client.executeMethod(method);

			String SubmitResult = method.getResponseBodyAsString();
			
			Document doc = DocumentHelper.parseText(SubmitResult);
			Element root = doc.getRootElement();

			String code = root.elementText("code");
			String msg = root.elementText("msg");
			String smsid = root.elementText("smsid");

			System.out.println(code);
			System.out.println(msg);
			System.out.println(smsid);

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

		request.getSession().setAttribute("mobile_code", mobile_code);
		return mobile_code;

	}
	

	
	/**
	 * 根据快客Id修改手机号码
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
			HttpServletRequest http) {

		kuaiketabService.updatePhoneById(kuaikePhone, kuaikeId);

		http.getSession().removeAttribute("login");
		http.getSession().removeAttribute("mobile_code");

		return "PC/personalCenter";
	}

}
