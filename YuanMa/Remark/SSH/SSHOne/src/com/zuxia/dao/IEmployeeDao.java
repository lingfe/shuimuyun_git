package com.zuxia.dao;

import java.util.List;

import com.zuxia.model.Emps;

/**
 * 对员工信息操作的接口
 * @author Administrator lixiaojie
 * @version 1.0
 * @datetime 2016-10-21 19:35
 */
public interface IEmployeeDao {
	
	//查询出员工所有信息，返回list集合
	public List<Emps> getEmpsList();
	
	//根据员工编号查询，返回list集合
	public List<Emps> getEmpsList(Integer empid);
	
	//根据员工编号查询，返回emps实体
	public Emps getEmpsID(Integer empid);
	
	//保存员工信息
	public void insertEmpsInfo(Emps emps);
	
	//根据id修改员工信息
	public void updateEmps(Emps emps);
	
	//根据id删除员工信息
	public void deleteEmps(Integer empid);
	
	
	
}
