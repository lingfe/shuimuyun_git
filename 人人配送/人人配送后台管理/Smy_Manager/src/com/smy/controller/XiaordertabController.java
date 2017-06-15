package com.smy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.smy.model.Xiaordertab;
import com.smy.service.XiaordertabService;

/**
 * 下单信息管理
 * @author YangJie
 * 2017年6月12日15:02:14
 */
@Controller
public class XiaordertabController {
		@Autowired
		private XiaordertabService xiaordertabService;
		//分页得到管理员的信息
		@RequestMapping(value="queryOrderList/{Pagenum}",method=RequestMethod.GET)
		public String queryOrderList(ModelMap model, @PathVariable("Pagenum") Integer Pagenum){
			
			Integer PageSize = 20; // 每页显示的条数
			// 计算总条数
			Integer count = xiaordertabService.queryCount();
			// 总页数
			Integer sumPage = count % PageSize == 0 ? count / PageSize : count / PageSize + 1;
			if (Pagenum - 1 <= 0) {
				Pagenum = 1;
			}
			if (Pagenum > sumPage) {
				Pagenum = sumPage;
			}
			// 计算当前页面数据
			List<Xiaordertab> orderlist = xiaordertabService.queryXiaOrder((Pagenum - 1) * PageSize, PageSize);
			//总页数
			model.addAttribute("sumPage", sumPage);
			//下单实体对象
			model.addAttribute("order", orderlist);
			//当前页
			model.addAttribute("Pagenum", Pagenum);

			return "orderList";
		}
}
