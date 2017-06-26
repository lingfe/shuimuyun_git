package com.smy.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.smy.model.Kuaiketab;
import com.smy.service.KuaiketabService;
/**
 * 查询
 * 快客信息管理
 * @author YangJie
 *2017年6月12日15:01:10
 */
@Controller
public class KuaiketabController {

	@Autowired
	private KuaiketabService kuaiketabService;

	/**
	 * 分页查询快客的信息
	 * @param model model集合对象
	 * @param Pagenum 分页参数
	 * @return  返回接受数据页面
	 */
	@RequestMapping(value = "queryAllKuaike/{Pagenum}", method = RequestMethod.GET)
	public String queryAllKuaike(ModelMap model, @PathVariable("Pagenum") Integer Pagenum) {

		Integer PageSize =20; // 每页显示的条数
		// 计算总条数
		Integer count = kuaiketabService.getCount();
		// 总页数
		Integer sumPage = count % PageSize == 0 ? count / PageSize : count / PageSize + 1;
		if (Pagenum - 1 <= 0) {
			Pagenum = 1;
		}
		if (Pagenum > sumPage) {
			Pagenum = sumPage;
		}
		// 计算当前页面数据
		List<Kuaiketab> kuaike = kuaiketabService.queryPagekuaike((Pagenum - 1) * PageSize, PageSize);

		model.addAttribute("sumPage", sumPage);
		model.addAttribute("kuaike", kuaike);
		model.addAttribute("Pagenum", Pagenum);

		return "kuaikeList";
	}
	
	
	/**
	 * 根据快客id对快客申请进行简单的审核 【修改快客申请的状态】
	 * @param kuaikeId  快客Id
	 * @param model  集合对象
	 * @param session 【Session】
	 */
	@RequestMapping(value="updateKuaikeStatus/{kuaikeId}",method=RequestMethod.GET)
	public String updateStatus(@PathVariable("kuaikeId") String kuaikeId,ModelMap model,HttpSession session){
		
		kuaiketabService.updateKuaikeStatus(2, kuaikeId);
		
		return "redirect:/queryAllKuaike/1";
	}
	

}
