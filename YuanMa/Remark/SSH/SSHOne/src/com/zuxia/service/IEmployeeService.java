package com.zuxia.service;

import java.util.List;

import com.zuxia.model.Depts;
import com.zuxia.model.Emps;


/**
 * 合并处理emps与dept的数据的接口
 * @author Administrator lixiaojie
 * @version 1.0
 * @datetime 2016-10-21 20:27
 *
 */
public interface IEmployeeService {
	
	//start emps
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
	//end emps
	
	//---------------------------------------------------
	
	//start dept
	//查询部门所有信息的方法，返回list集合
	public List<Depts> getDempartmentList();
	
	//根据id查询部门信息的方法,返回list集合
	public List<Depts> getDempartmentList(Integer deptid);
	
	//根据id查询部门信息的方法,返回Depts实体
	public Depts getDempartmentID(Integer deptid);
	//end dept

	
}
