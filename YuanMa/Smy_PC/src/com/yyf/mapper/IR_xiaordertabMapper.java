package com.yyf.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.yyf.inter.InterJDBC;
import com.yyf.model.R_xiaordertab;
import com.yyf.model.UserEntity;

/**
 * 
  * 文件名：R_xiaordertabMapper.java
  * 描述： 下单数据访问接口
  * 修改人： lijie
  * 修改时间：2017年5月16日 下午4:15:26
  * 修改内容：
  * //public interface IR_xiaordertabMapper  extends InterJDBC<R_xiaordertab>{
 */
public interface IR_xiaordertabMapper  extends InterJDBC<R_xiaordertab>{	
	@Insert("insert  into `xiaordertab`(`xiaId`,`kuaikeName`,`kuaikePhone`,`kuaikeAddress`,`shouhuoName`,`shouhuoShone`,`shouhuoAddress`,`quhouDate`,`kaikePrioes`,`status`,`okDate`,`shopName`,`Shopzholiang`,`ShopNumer`,`Shopprices`,`shopguige`,`Shopdate`) "
			+ "values (#{xiaId},#{kuaikeName},#{kuaikePhone},#{kuaikeAddress},#{shouhuoNmae},#{shouhuoShone},#{shouhuoAddress},#{quhuoDate},#{kaikeProies},#{status},#{okDate},#{shopName},#{shopzholiang},#{shopNumer},#{shopprices},#{shopGuige},#{shopDate})")
	void add(R_xiaordertab t);
	
	
	@Select("SELECT * FROM R_xiaordertab ")
	@Override
	List<R_xiaordertab> query();
	
	@Select("SELECT COUNT(*) FROM R_xiaordertab")
	@Override
	int queryCount();
	
	
	
	
	
}
