package com.smy.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.smy.model.Qiangordertab;
import com.smy.service.QiangordertabService;

@Controller
public class QiangordertabController {
	
	@Autowired
	private QiangordertabService qiangordertabService;
	
	@RequestMapping(value="queryQiangorder/{Pagenum}",method=RequestMethod.GET)
	public String queryQiangorder(ModelMap model,HttpSession session,@PathVariable("Pagenum") int Pagenum) {
		
		Integer PageSize = 20; // 每页显示的条数
		// 计算总条数
		Integer count = qiangordertabService.queryCount();
		// 总页数
		Integer sumPage = count % PageSize == 0 ? count / PageSize : count / PageSize + 1;
		if (Pagenum - 1 <= 0) {
			Pagenum = 1;
		}
		if (Pagenum > sumPage) {
			Pagenum = sumPage;
		}
		// 计算当前页面数据
		List<Qiangordertab> qiangorderList = qiangordertabService.queryQiangorder((Pagenum - 1) * PageSize, PageSize);
		//总页数
		model.addAttribute("sumPage", sumPage);
		//下单实体对象
		model.addAttribute("qiangList", qiangorderList);
		//当前页
		model.addAttribute("Pagenum", Pagenum);

		return "qiangList";
	}
	
	
	/**
	 * 根据抢单Id得到抢单详情
	 * @param map 集合对象
	 * @param qiangId 抢单Id
	 * @return
	 */
	@RequestMapping(value="querydetail/{qiangId}",method=RequestMethod.GET)
	public String qiangDetail(Map<String,Object> map,@PathVariable("qiangId") String qiangId) {
		
		Qiangordertab qiangTell=qiangordertabService.queryDetail(qiangId);
		
		map.put("qiangTell", qiangTell);
		
		System.out.println( qiangTell);
		
		
		return "qiangDetail";
	}
	
	
	
	
}
