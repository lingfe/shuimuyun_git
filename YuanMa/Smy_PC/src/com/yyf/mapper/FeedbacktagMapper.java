package com.yyf.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.yyf.model.Feedbacktag;

/**
 * 
  * 文件名：FeedbacktagMapper.java
  * 描述： 	意见反馈数据访问
  * 修改人： lijie
  * 修改时间：2017年6月17日 下午9:29:50
  * 修改内容：
 */
public interface FeedbacktagMapper {
	
	/**
	 * 
	 * 根据快客id查询历史记录
	 * @author lijie     
	 * @created 2017年6月17日 下午9:46:41  
	 * @param kuaikeId 快客id
	 * @return
	 */
	@Select("SELECT * FROM feedbacktag WHERE kuaikeId=#{kuaikeId}")
	List<Feedbacktag> getKuaiKeIdList(@Param("kuaikeId")String kuaikeId);
	
	/**
	 * 
	 * 添加意见反馈的记录
	 * @author lijie     
	 * @created 2017年6月17日 下午9:38:50  
	 * @param tag
	 */
	@Insert("INSERT  INTO `feedbacktag`(`feedbackId`,`kuaikeId`,`feedbackDate`,`status`,`remark`) "
			+ "VALUES (#{feedbackId},#{kuaikeId},#{feedbackDate},#{status},#{remark});")
	void add(Feedbacktag tag);
	
	
	
	
}
