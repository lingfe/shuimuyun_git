package com.yyf.controller.util;

/**
 * 
 * 文件名： ErrorShow.java 描述： 错误信息定义与输出 修改人： lijie 修改时间： 2017年5月22日 下午4:17:10 修改内容：
 */
public final class ErrorShow {

	/** 系统异常 **/
	public static final String ERROR = "系统异常！";
	
	/** 保存成功 **/
	public static final String SAVA_SHOW="保存成功！";

	/** 下单状态不为0，不能删除 **/
	public static final String XIADAN_NO_0 = "下单状态不为0，不能删除！";

	/** 保存文件出错 **/
	public static final String SAVA_ERROR= "保存文件出错！";

	/** 连接错误的时候 **/
	public static final String str = "正在连接服务器......";
	
	/** 该手机号码已经被注册  **/
	public static final String PHONE_OK="该手机号码已经被注册";
	
	/** 请您先登录 **/
	public static final String QNXDL="请您先登录!";
	
	/** 请您完善信息再提交 **/
	public static final String WSINFO="请您完善信息再提交 ";
	
	/**用户名或密码不正确**/
	public static final String SYS_ERROR="手机或密码不正确";
	
	/**人工找回密码提示语**/
	public static final String SYS_MSG="所填信息不匹配";
	
	/** XX不能为空  **/
	public static final String NON_EMPYT="不能为空";
	
	/** "参数错误！ **/
	public static final String PARAM_ERROR="参数错误!";
	
	/** 提交成功！ **/
	public static final String SBMIT_OK="成功！";
	
	/**	提交失败! **/
	public static final String SBMIT_NO="失败!";
	
	/** 图片太大了 ！ **/
	public static final String IMAGES_SIZE="图片太大了 ！";
	
	/**
	 * 
	 * alert提示的封装,没有提示级别
	 * @author lijie     
	 * @created 2017年6月1日 下午3:09:03  
	 * @param show 要输出的内容
	 * @return
	 */
	public static final String getAlert(String show){
		show="alert('"+show+"');";
		return show;
	}
	
	/**
	 * 
	 * layer提示的封装,没有提示级别
	 * @author lijie     
	 * @created 2017年6月1日 下午3:09:03  
	 * @param show 要输出的内容
	 * @return
	 */
	public static final String getLayerMsg(String show){
		show="layer.msg('"+show+"');";
		return show;
	}
	
	/**
	 * 
	 * layer提示的封装,有提示级别,默认停留时间1000ms
	 * @author lijie     
	 * @created 2017年6月1日 下午3:11:27  
	 * @param show 	要输出的内容
	 * @param num	错误级别
	 * @return
	 */
	public static final String getLayerMsg(String show,int num){
		show="layer.msg('"+show+"',{icon:"+num+",time:1000});";
		return show;
	}
}
