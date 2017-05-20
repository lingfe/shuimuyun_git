package com.yyf.controller;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yyf.model.R_xiaordertab;
import com.yyf.service.R_xiaordertabService;
import com.yyf.util.R_kuaiketabStatusEnum;
import com.yyf.util.R_xiaordertabEnum;

/**
 * 
 * 文件名： R_xiaordertabController.java 
 * 描述： 下单，表现层 
 * 修改人： lijie 
 * 修改时间： 2017年5月16日
 * 下午4:49:39 修改内容：
 */
@Controller
@RequestMapping("/xiaordertab")
public class R_xiaordertabController {
	
	// 自动装配
	@Autowired
	private R_xiaordertabService r_xiaordertabService;
	
	/**
	 * 
	 * 根据下单id删除
	 * @author lijie    
	 * @created 2017年5月19日 下午5:09:23  
	 * @param xiaId下单id
	 * @return
	 */
	@RequestMapping(value="/delete/{xiaId}",method=RequestMethod.GET)
	public String delete(@PathVariable("xiaId")String xiaId){
		R_xiaordertab xiaorderInfo = r_xiaordertabService.xiaorderInfo(xiaId);
		//判断状态是否为0，否则不能删除
		if(xiaorderInfo!=null&&xiaorderInfo.getStatus()==R_xiaordertabEnum.WJD.ordinal()){
			//删除
			r_xiaordertabService.delete(xiaId);
			return "index";
		}
		
		return "index";
	}
	
	
	
	/**
	 * 
	 * 下单的详细信息
	 * @author lijie     
	 * @created 2017年5月19日 下午3:05:32  
	 * @param xiaId 下单id
	 * @return URL
	 */
	@RequestMapping(value="/xiaorderInfo/{xiaId}",method=RequestMethod.GET)
	public String xiaorderInfo(@PathVariable("xiaId")String xiaId,ModelMap map){
		//得到数据
		R_xiaordertab xiaorderInfo = r_xiaordertabService.xiaorderInfo(xiaId);
		map.addAttribute("info", xiaorderInfo);
		System.out.println(xiaorderInfo.toString());
		return "index";
	}
	
	
	/**
	 * 
	 * 修改下单状态(0=未接单,1={配送中，已接单}，2=已到达（点击确认到达，修改抢单状态）)
	 * @author 	lijie     
	 * @created 2017年5月19日 上午11:47:32  
	 * @return	URL
	 */
	@RequestMapping(value="/updateStatus/{xiaId}/{status}",method=RequestMethod.GET)
	public String updateStatus(@PathVariable("xiaId")String xiaId,@PathVariable("status")int status){
		//调用方法
		r_xiaordertabService.updateStatus(status, xiaId);
		
		return "index";
	}
	
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
		//下单id
		tab.setXiaId(UUID.randomUUID().toString());
		//下单状态,默认
		tab.setStatus(R_xiaordertabEnum.WJD.ordinal());

		r_xiaordertabService.add(tab);
		return "index";
	}
	
}
