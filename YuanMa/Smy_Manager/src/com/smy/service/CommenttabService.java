package com.smy.service;

import java.util.List;

import javax.transaction.Transactional;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smy.mapper.CommenttabMapper;
import com.smy.model.Commenttab;

/**
 * 评论Service层
 * @author YangJie
 *
 */
@Service
public class CommenttabService {

	@Autowired
	private CommenttabMapper commenttabMapper;
	
	@Transactional
	public List<Commenttab> queryComment(@Param("PageNo") int PageNo,@Param("PageSize") int PageSize){
		
		List<Commenttab> commentList = commenttabMapper.queryComment(PageNo, PageSize);
		
		return commentList;
	}

	//得到评论条数
	public int getCount() {
		int count=commenttabMapper.getCount();
		return count;
	}
	
	// 删除
	@Transactional
	public void removeInfo(@Param("commentId") String commentId) {
		commenttabMapper.removeInfo(commentId);

	}

}
