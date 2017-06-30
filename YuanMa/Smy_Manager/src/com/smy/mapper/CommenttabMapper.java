package com.smy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.smy.model.Commenttab;

public interface CommenttabMapper {

	//分页查看评论信息
	@Select("select * from commenttab")
	public List<Commenttab> queryComment();

	//得到评论总条数
	@Select("select count(*) from commenttab")
	public int getCount();
	

	// 删除（根据Id）
	@Delete("delete from commenttab where commentId=#{commentId}")
	public void removeInfo(@Param("commentId") String commentId);
}
