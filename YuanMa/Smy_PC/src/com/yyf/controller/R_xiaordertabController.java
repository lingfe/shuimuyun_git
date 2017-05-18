package com.yyf.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.ws.rs.Path;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
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
	 * 添加下单纪录
	 * 
	 * @author lijie
	 * @created 2017年5月16日 下午5:12:24
	 * @param 实体数据
	 * @return URL
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(R_xiaordertab tab) {

		tab.setXiaId(UUID.randomUUID().toString());
		tab.setStatus(0);

		r_xiaordertabService.add(tab);
		return "index";
	}

}
