package com.yyf.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.yyf.model.City;

/**
 * 
  * 文件名：ICity.java
  * 描述： 	获取省市区，数据访问接口
  * 修改人： 	lijie
  * 修改时间：2017年5月28日 上午10:20:57
  * 修改内容：
 */
public interface ICityMapper {

	/**
	 * 
	 * 根据id，查询出省区
	 * @author lijie     
	 * @created 2017年5月28日 上午10:45:46  
	 * @param parent_id
	 * @return
	 */
	@Select("select * from city where parent_id=#{parent_id}")
	List<City> queryIdCity(@Param("parent_id")int parent_id);
	
	/**
	 * 
	 * 获取省市区
	 * @author lijie
	 * @created 2017年5月28日 上午10:25:05  
	 * @return
	 */
	@Select("select * from city")
	List<City> getList();
	
	/**
	 * 
	 * 省
	 * @author lijie     
	 * @created 2017年5月28日 上午10:36:15  
	 * @return
	 */
	@Select("select * from city where level=0")
	List<City> getProvince();
	
	/**
	 * 
	 * 市
	 * @author lijie     
	 * @created 2017年5月28日 上午10:36:15  
	 * @return
	 */
	@Select("select * from city where level=1")
	List<City> getCity();
	
	/**
	 * 
	 * 区
	 * @author lijie     
	 * @created 2017年5月28日 上午10:36:15  
	 * @return
	 */
	@Select("select * from city where level=2")
	List<City> getArea();
}
