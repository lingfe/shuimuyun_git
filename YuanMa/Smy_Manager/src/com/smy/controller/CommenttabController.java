package com.smy.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.smy.model.Commenttab;
import com.smy.model.Qiangordertab;
import com.smy.model.Xiaordertab;
import com.smy.service.CommenttabService;
import com.smy.service.QiangordertabService;
import com.smy.service.XiaordertabService;

/**
 * 评论控制层
 * @author YangJie
 *
 */
@Controller
public class CommenttabController {

	//详情注入
	@Autowired
	private XiaordertabService xiaordertabService;
	//评论注入
	@Autowired
	private CommenttabService commenttabService;
	
	@RequestMapping(value="queryComment",method=RequestMethod.GET)
	public String queryComment(ModelMap model){
		
		// 计算当前页面数据
		List<Commenttab> commentList = commenttabService.queryComment();
	
			
			model.addAttribute("comment", commentList);
			
		

			return "commentList";
	

		
	}
	
	// 批量删除
	@RequestMapping(value = "/removeCommentInfo", method = RequestMethod.DELETE)
	public String batchDelete(HttpServletRequest request) {
		String[] ids = request.getParameterValues("subcheck");
		if (ids == null) {
			return "redirect:/queryComment/1";
		} else {
			for (int i = 0; i < ids.length; i++) {
				String commentId = ids[i];
				commenttabService.removeInfo(commentId);
				
			}
			return "redirect:/queryComment/1";
		}
	}

	//删除
	@RequestMapping(value = "/removeCommentInfo/{commentId}", method = RequestMethod.GET)
	public String removeSInfo(@PathVariable("commentId") String commentId) {
		commenttabService.removeInfo(commentId);
		return "redirect:/queryComment/1";

	}
	
	
	
	/**
	 * 根据抢单Id得到抢单详情
	 * @param map 集合对象
	 * @param qiangId 抢单Id
	 * @return
	 */
	@RequestMapping(value="queryCommentDetail/{xiaId}",method=RequestMethod.GET)
	public String qiangDetail(Map<String,Object> map,@PathVariable("xiaId") String xiaId) {
		
		Xiaordertab pingTell=xiaordertabService.queryDetail(xiaId);
		map.put("pingTell", pingTell);
		System.out.println( pingTell);
		return "pinglun";
	}
	
	
	
	
	
}
