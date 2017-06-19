package com.yyf.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Service;

import com.yyf.model.Feedbacktag;

/**
 * 
  * 文件名：FeedbacktagService.java
  * 描述： 意见反馈，service接口
  * 修改人： lijie
  * 修改时间：2017年6月17日 下午9:40:22
  * 修改内容：
 */
public interface FeedbacktagService {

	/**
	 * 
	 * 根据快客id查询历史记录
	 * @author lijie     
	 * @created 2017年6月17日 下午9:46:41  
	 * @param kuaikeId 快客id
	 * @return
	 */
	List<Feedbacktag> getKuaiKeIdList(String kuaikeId);
	
	/**
	 * 
	 * 添加意见反馈的记录
	 * @author lijie     
	 * @created 2017年6月17日 下午9:38:50  
	 * @param tag
	 */
	void add(Feedbacktag tag);
	
}
