package com.yyf.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yyf.mapper.ICityMapper;
import com.yyf.model.City;
import com.yyf.service.CityService;

/**
 * 
  * 文件名：CityServiceImpl.java
  * 描述： 获取省市区的service实现类
  * 修改人： lijie
  * 修改时间：2017年5月28日 上午10:54:18
  * 修改内容：
 */
@Service
public class CityServiceImpl implements CityService {

	// 自动装配
	@Autowired
	private ICityMapper iCityMapper;
	

	@Override
	public List<City> queryIdCity(int parent_id) {
		return iCityMapper.queryIdCity(parent_id);
	}

	@Override
	public List<City> getList() {
		return iCityMapper.getList();
	}

	@Override
	public List<City> getProvince() {
		return iCityMapper.getProvince();
	}

	@Override
	public List<City> getCity() {
		return iCityMapper.getCity();
	}

	@Override
	public List<City> getArea() {
		return iCityMapper.getArea();
	}
}
