package com.yyf.controller.util;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;

import com.yyf.model.Commenttab;
import com.yyf.model.R_kuaiketab;
import com.yyf.model.R_xiaordertab;

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
	 * 验证评论参数是否为空
	 * @author lijie     
	 * @created 2017年6月6日 下午4:30:10  
	 * @param tab		评论实体
	 * @param model		载体
	 * @return
	 */
	public static boolean getCommenttabNonEpty(Commenttab tab,ModelMap model){
		
		if(StringUtils.isEmpty(tab.getKuaikeId())||StringUtils.isEmpty(tab.getXiaId())){
			//提示，参数错误！
			model.addAttribute("errorShow",ErrorShow.getAlert(ErrorShow.PARAM_ERROR));
			return false;
		}else if(StringUtils.isEmpty(tab.getRemark())){
			//提示，评论内容不能为空
			model.addAttribute("errorShow",ErrorShow.getAlert("评论内容"+ErrorShow.NON_EMPYT));
			return false;
		}else if(StringUtils.isEmpty(tab.getStar())){
			//提示，星评不能为空
			model.addAttribute("errorShow",ErrorShow.getAlert("星评"+ErrorShow.NON_EMPYT));
			return false;
		}
		
		return true;
	}
	
	/**
	 * 验证下单的参数是否为空
	 * 一句话 方法的功能描述
	 * @author 杨杰     
	 * @created 2017年6月6日 下午4:12:00  
	 * @param tab		下单实体
	 * @param model		载体
	 * @return
	 */
	public static boolean getR_xiaordertabNonEpty(R_xiaordertab tab,ModelMap model){
		
		if(StringUtils.isEmpty(tab.getKuaikeName())){
			//提示，发货人电话不能为空
			model.addAttribute("errorShow",ErrorShow.getAlert("发货人电话"+ErrorShow.NON_EMPYT));
			return false;
		}else if(StringUtils.isEmpty(tab.getKuaikeName())){
			//提示，发货人名称不能为空
			model.addAttribute("errorShow",ErrorShow.getAlert("发货人名称"+ErrorShow.NON_EMPYT));
			return false;
		}else if(StringUtils.isEmpty(tab.getKuaikeAddress())){
			//提示，发货人地址不能为空
			model.addAttribute("errorShow",ErrorShow.getAlert("发货人地址"+ErrorShow.NON_EMPYT));
			return false;
		}else if(StringUtils.isEmpty(tab.getShouhuoName())){
			//提示，收货人名称不能为空
			model.addAttribute("errorShow",ErrorShow.getAlert("收货人名称不能为空"+ErrorShow.NON_EMPYT));
			return false;
		}else if(StringUtils.isEmpty(tab.getShouhuoShone())){
			//提示，收货人电话号码不能为空
			model.addAttribute("errorShow", ErrorShow.getAlert("收货人电话号码不能为空"+ErrorShow.NON_EMPYT));
			return false;
		}else if(StringUtils.isEmpty(tab.getShouhuoAddress())){
			//提示，收货人地址不能为空
			model.addAttribute("errorShow",ErrorShow.getAlert("收货人地址不能为空"+ErrorShow.NON_EMPYT));
		}
		
		
		return true;
	}
	
	/**
	 * 
	 * 验证快客申请参数是否为空
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
