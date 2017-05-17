package com.zuxia.dao;

import java.util.List;

import com.zuxia.model.Depts;
/**
 * 部门信息的操作的接口
 * @author Administrator lixiaojie
 * @version 1.0
 * @datetime 2016-10-21
 */
public interface IDepartmentDao {
	//查询部门所有信息的方法，返回list集合
	public List<Depts> getDempartmentList();
	
	//根据id查询部门信息的方法,返回list集合
	public List<Depts> getDempartmentList(Integer deptid);
	
	//根据id查询部门信息的方法,返回Depts实体
	public Depts getDempartmentID(Integer deptid);
}
