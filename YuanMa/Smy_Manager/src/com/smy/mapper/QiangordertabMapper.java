package com.smy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.smy.model.Qiangordertab;
/**
 * 抢单记录信息类
 * @author YangJie
 *
 */
public interface QiangordertabMapper {

	//分页查询所有的抢单记录信息
	@Select("select * from qiangordertab limit #{PageNo},#{PageSize}")
	public List<Qiangordertab> queryQiangorder(@Param("PageNo") int PageNo, @Param("PageSize") int PageSize);

	//得到抢单记录总条数
	@Select("select count(*) from qiangordertab")
	public int queryCount();

	
	
	
	
	//根据ID查询商品详细
	@Select("SELECT q.qiangId,q.xiaId,q.kuaikeId,q.status,q.qiangDate ," +
			"q.xiaId as \"Xiaordertab.xiaId\"," +
			"i.kuaikeName as \"xiaordertab.kuaikeName\"," +
			"i.kuaikePhone as \"xiaordertab.kuaikePhone\"," +
			"i.kuaikeAddress as \"xiaordertab.kuaikeAddress\" "+"FROM qiangordertab AS q INNER JOIN xiaordertab AS i ON  q.`xiaId`=i.`xiaId` WHERE q.qiangId=#{qiangId}")
	public Qiangordertab queryDetail(@Param("qiangId") String qiangId);

}
