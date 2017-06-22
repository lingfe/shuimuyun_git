package com.yyf.controller;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yyf.controller.util.ErrorShow;
import com.yyf.model.Feedbacktag;
import com.yyf.service.FeedbacktagService;

/**
 * 
  * 文件名：FeedbacktagController.java
  * 描述： 意见反馈，处理请求
  * 修改人： lijie
  * 修改时间：2017年6月17日 下午9:52:17
  * 修改内容：
 */
@Controller
@RequestMapping("feedbacktagController")
public class FeedbacktagController {

	//自动装配，意见反馈
	@Autowired
	private FeedbacktagService feedbacktagService;
	
	
	/**
	 * 
	 * 根据快客id查询历史记录
	 * @author lijie     
	 * @created 2017年6月17日 下午9:46:41  
	 * @param kuaikeId 快客id
	 * @return
	 */
	@RequestMapping(value="/getKuaiKeIdList/{kuaikeId}",method=RequestMethod.GET)
	public String getKuaiKeIdList(@PathVariable("kuaikeId")String kuaikeId,ModelMap model){
		//得到数据
		List<Feedbacktag> kuaiKeIdList = feedbacktagService.getKuaiKeIdList(kuaikeId);
		model.addAttribute("list", kuaiKeIdList);
		
		return "APP/historicalFeedback";
	}
	
	/**
	 * 
	 * 添加意见反馈的记录
	 * @author lijie     
	 * @created 2017年6月17日 下午9:38:50  
	 * @param tag
	 */
	@RequestMapping(value="/feedbackAdd",method=RequestMethod.POST)
	public String feedbackAdd(Feedbacktag tag,ModelMap model){
		
		try {
			//设置默认值
			tag.setFeedbackId(UUID.randomUUID().toString());
			tag.setFeedbackDate(new Date());
			tag.setStatus(0);
			
			//执行添加
			feedbacktagService.add(tag);
			model.addAttribute("errorShow", ErrorShow.getAlert(ErrorShow.SBMIT_OK));
			return "APP/feedback_neiro";
		
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("errorShow", ErrorShow.getAlert(ErrorShow.SBMIT_NO));
			return "APP/feedback_neiro";
		}
	} 
	
}
