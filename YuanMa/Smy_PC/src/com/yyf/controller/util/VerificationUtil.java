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
	 * 对快客的所有参数进行验证
	 * @author lijie    
	 * @created 2017年6月2日 上午9:02:43  
	 * @param tab	实体数据
	 * @param model	装载提示
	 * @return
	 */
	public boolean getR_kuaiketabV(R_kuaiketab tab,ModelMap model){
		
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
	
	public static void main(String[] args) {
		
		System.out.println(StringUtils.isEmpty("."));
	}
	
}
