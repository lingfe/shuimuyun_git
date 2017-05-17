package com.zuxia.ssm.services;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zuxia.ssm.model.Depts;
import com.zuxia.ssm.model.Emps;
import com.zuxia.ssm.mybatis.CustomerData;

@Service
public class DataServices {
	
	@Autowired
	private CustomerData customerData;
	//得到数据行
	public Integer getNum(){
		return customerData.getNum();
	}
	
	//分页查询pageAll
	public List<Emps> pageAll(Map<String,Object> map){
		return customerData.pageAll(map);
	}
	
	//得到所有数据
	@Transactional //事务
	public List<Emps> getAll(){
		return customerData.getAll();
	}
	
	//submit添加
	public void insertEmpInfo(Emps emps){
		customerData.insertEmpInfo(emps);
	}
	
	
	//修改之前调用的方法
	@Transactional
	public List<Depts> getDeptsAll(){
		return customerData.getDepts();
	}
	
	//submit修改
	public void updateEmps(Emps emps){
		customerData.updateEmps(emps);
	}
	
	//删除
	public void deleteEmps(Integer id){
		customerData.deleteEmps(id);
	}
	
	//根据id查询emps
	public Emps getEmpsId(Integer id){
		
		return customerData.getEmpsId(id);
	}
	
}
