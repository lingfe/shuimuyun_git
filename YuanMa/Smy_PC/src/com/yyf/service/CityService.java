package com.yyf.service;

import java.util.List;
import com.yyf.model.City;

/**
 * 
  * 文件名：ICityService.java
  * 描述： 	获取省市区的服务层
  * 修改人：	lijie
  * 修改时间：2017年5月28日 上午10:47:42
  * 修改内容：
 */
public interface CityService {

	/**
	 * 
	 * 根据id，查询出省区
	 * @author lijie     
	 * @created 2017年5月28日 上午10:45:46  
	 * @param parent_id
	 * @return
	 */
	List<City> queryIdCity(int parent_id);
	
	/**
	 * 
	 * 获取省市区
	 * @author lijie
	 * @created 2017年5月28日 上午10:25:05  
	 * @return
	 */
	List<City> getList();
	
	/**
	 * 
	 * 省
	 * @author lijie     
	 * @created 2017年5月28日 上午10:36:15  
	 * @return
	 */
	List<City> getProvince();
	
	/**
	 * 
	 * 市
	 * @author lijie     
	 * @created 2017年5月28日 上午10:36:15  
	 * @return
	 */
	List<City> getCity();
	
	/**
	 * 
	 * 区
	 * @author lijie     
	 * @created 2017年5月28日 上午10:36:15  
	 * @return
	 */
	List<City> getArea();
}
