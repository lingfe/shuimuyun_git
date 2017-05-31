package com.yyf.controller.util;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yyf.model.City;
import com.yyf.service.CityService;

/**
 * 
  * 文件名：RequestMappingUtil.java
  * 描述：    请求跳转工具类
  * 修改人： lijie
  * 修改时间：2017年5月31日 上午8:41:43
  * 修改内容：
 */
@Controller
@RequestMapping("RequestMappingUtil")
public class RequestMappingUtil {

	// 自动装配	地址
	@Autowired
	private CityService cityService;
	
	/**
	 * 这个方法是用于不带数据跳转的页面
	 * 根据param参数跳转到某个页面
	 * 根据i来区分pc还是移动端
	 * @author lijie     
	 * @created 2017年5月31日 上午8:44:16  
	 * @param param 页面名称
	 * @param i pc/app
	 * @return
	 */
	@RequestMapping(value="requestNUll/{i}/{param}",method=RequestMethod.GET)
	public String requestNUll(@PathVariable("param")String param,@PathVariable("i")String i){
		
		return i+"/"+param;
	}
	
	/**
	 * 这个方法是用于带数据跳转的页面，比如地址省市区的数据
	 * 根据param参数跳转到某个页面
	 * 根据i来区分pc还是移动端
	 * @author lijie     
	 * @created 2017年5月31日 上午8:44:16  
	 * @param param 页面名称
	 * @param i pc/app
	 * @return
	 */
	@RequestMapping(value="requestData/{i}/{param}",method=RequestMethod.GET)
	public String requestData(@PathVariable("param")String param,@PathVariable("i")String i,ModelMap map){
		//获取省
		List<City> province = cityService.getProvince();
		map.addAttribute("province", province);
		
		//获取市
		List<City> city = cityService.getCity();
		map.addAttribute("city", city);
		
		//获取区
		List<City> area = cityService.getArea();
		map.addAttribute("area",area);
		
		//判断i
		if(i=="PC"){
			return i+"/"+param;
		}
		
		return i+"/"+param;
		
	}
}
