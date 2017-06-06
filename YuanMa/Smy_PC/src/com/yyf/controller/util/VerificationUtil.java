package com.yyf.controller.util;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;

import com.yyf.model.R_kuaiketab;

/**
 * 
  * 文件名：VerificationUtil.java
  * 描述： 	验证工具类
  * 修改人： 	lijie
  * 修改时间：2017年6月2日 上午9:00:17
  * 修改内容：
 */
@Controller
public class VerificationUtil {

	
	/**
	 * 
	 * 验证快客是否为空
	 * @author lijie     
	 * @created 2017年6月5日 下午1:58:47  
	 * @param tab
	 * @return
	 */
	public static boolean getR_kuaiketabNonEpty(R_kuaiketab tab,ModelMap model){
		
		if(StringUtils.isEmpty(tab.getKuaikeId())){
			return false;
		}else if(StringUtils.isEmpty(tab.getKuaikeAddress())||StringUtils.isEmpty(tab.getKuaikeAddressInfo())){
			//提示,地址或者地址详细,不能为空
			model.addAttribute("errorShow", ErrorShow.getAlert("地址或者地址详细"+ErrorShow.NON_EMPYT));
			return false;
		}else if(StringUtils.isEmpty(tab.getKuaikeName())){
			//提示，姓名，不能为空
			model.addAttribute("errorShow",ErrorShow.getAlert("姓名"+ErrorShow.NON_EMPYT));
			return false;
		}else if(StringUtils.isEmpty(tab.getKuaikePhone())){
			//提示，电话号码，不能为空
			model.addAttribute("errorShow",ErrorShow.getAlert("电话号码"+ErrorShow.NON_EMPYT));
			return false;
		}else if(StringUtils.isEmpty(tab.getKuaikeShenfenZF())){
			//提示，身份证正反图片，不能为空
			model.addAttribute("errorShow",ErrorShow.getAlert("身份证正反图片"+ErrorShow.NON_EMPYT));
			return false;
		}else if(StringUtils.isEmpty(tab.getKuaikeShouchiSFZ())){
			//提示，手拿身份证，不能为空
			model.addAttribute("errorShow",ErrorShow.getAlert("手拿身份证"+ErrorShow.NON_EMPYT));
			return false;
		}
		
		return true;
	}

	/**
	 * 
	 * 对快客的所有参数进行验证
	 * @author lijie    
	 * @created 2017年6月2日 上午9:02:43  
	 * @param tab	实体数据
	 * @param model	装载提示
	 * @return
	 */
	public static boolean getR_kuaiketabV(R_kuaiketab tab,ModelMap model){
		
		if(tab==null||StringUtils.isEmpty(tab.getKuaikePhone())){
			//提示,请您先登录 
			model.addAttribute("errorShow", ErrorShow.getAlert(ErrorShow.QNXDL));
			return false;
		}else if(StringUtils.isEmpty(tab.getKuaikeShenfenZF())||StringUtils.isEmpty(tab.getKuaikeShouchiSFZ())){
			//提示,请您完善信息再提交 
			model.addAttribute("errorShow", ErrorShow.getAlert(ErrorShow.QNXDL));
			return false;
		}
		return true;
	}
	
}
