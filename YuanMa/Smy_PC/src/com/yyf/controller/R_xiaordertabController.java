package com.yyf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yyf.model.R_xiaordertab;
import com.yyf.service.R_xiaordertabService;

/**
 * 
  * 文件名：	R_xiaordertabController.java
  * 描述： 	下单，表现层
  * 修改人：	lijie
  * 修改时间：	2017年5月16日 下午4:49:39
  * 修改内容：
 */
@RequestMapping("/R_xiaordertab")
public class R_xiaordertabController {

	//自动装配
	@Autowired
	private R_xiaordertabService r_xiaordertabService;
	
	/**
	 * 
	 * 添加下单纪录
	 * @author		lijie  
	 * @created 	2017年5月16日 下午5:12:24  
	 * @param 		实体数据
	 * @return 		URL
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String add(R_xiaordertab tab){
		r_xiaordertabService.add(tab);
		return "";
	}
	
}
