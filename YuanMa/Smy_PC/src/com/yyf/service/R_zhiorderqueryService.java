package com.yyf.service;

import com.yyf.model.R_zhiordertab;

/**
 * 
 * 文件名： R_zhiordertabService.java 描述： 支付接口    修改人： tianhao 修改时间： 2017年6月17日11:19:00
 *  修改内容：
 */
public interface R_zhiorderqueryService {
	
//	/**
//	 * 
//	 * app支付前数据查询
//	 * @author tianhao
//	 * @created 2017年6月17日 上午10:17:06  
//	 * @param searchKey		搜索条件	
//	 * @return	数据信息
//	 */
//	R_zhiordertab queryMessage();
	/**
	 * 
	 * 插入订单信息
	 * @author 田浩
	 * @created 2017年6月17日 下午2:03:28  
	 * @param tab
	 */
	R_zhiordertab selectMessage(String xiaid);

}
