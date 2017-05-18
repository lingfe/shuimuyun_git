package com.yyf.controller;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yyf.model.R_xiaordertab;
import com.yyf.service.R_xiaordertabService;

/**
 * 
 * 文件名： R_xiaordertabController.java 
 * 描述： 下单，表现层 
 * 修改人： lijie 
 * 修改时间： 2017年5月16日
 * 下午4:49:39 修改内容：
 */
@Controller
public class R_xiaordertabController {

	// 自动装配
	@Autowired
	private R_xiaordertabService r_xiaordertabService;


	/**
	 * 
	 * 获取下单数据集合
	 * @author 	lijie    
	 * @created 2017年5月18日 下午3:13:16  
	 * @return list
	 */
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String xiaorderList(Map<String, Object> map){
		List<R_xiaordertab> query = r_xiaordertabService.query();
		map.put("query", query);
		
		return "index";
	}
	
	/**
	 * 
	 * 添加下单纪录
	 * @author 	lijie
	 * @created 2017年5月16日 下午5:12:24
	 * @param 	实体数据
	 * @return	URL
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(R_xiaordertab tab) {

		tab.setXiaId(UUID.randomUUID().toString());
		tab.setStatus(0);

		r_xiaordertabService.add(tab);
		return "index";
	}

}
