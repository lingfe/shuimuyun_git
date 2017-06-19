package com.yyf.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yyf.mapper.FeedbacktagMapper;
import com.yyf.model.Feedbacktag;
import com.yyf.service.FeedbacktagService;

/**
 * 
  * 文件名：FeedbacktagServiceImpl.java
  * 描述： 意见反馈，service接口实现层
  * 修改人： lijie
  * 修改时间：2017年6月17日 下午9:42:11
  * 修改内容：
 */
@Service
public class FeedbacktagServiceImpl implements FeedbacktagService {

	//自动装配，意见反馈
	@Autowired
	private FeedbacktagMapper feedbacktagMapper;
	
	
	@Override
	public List<Feedbacktag> getKuaiKeIdList(String kuaikeId) {
		return feedbacktagMapper.getKuaiKeIdList(kuaikeId);
	}
	
	@Override
	public void add(Feedbacktag tag) {
		feedbacktagMapper.add(tag);
	}
}
