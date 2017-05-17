package com.zuxia.service.impl;

import java.util.List;

import com.zuxia.dao.impl.DepartmentDaoImpl;
import com.zuxia.dao.impl.EmployeeDaoImpl;
import com.zuxia.model.Depts;
import com.zuxia.model.Emps;
import com.zuxia.service.IEmployeeService;

public class EmployeeServiceImpl implements IEmployeeService{
	//映射处理员工数据的业务逻辑类
	private EmployeeDaoImpl employeeDaoImpl;
	
	//颜色处理部门数据的业务逻辑类
	private DepartmentDaoImpl departmentDaoImpl;

	public EmployeeDaoImpl getEmployeeDaoImpl() {
		return employeeDaoImpl;
	}

	public void setEmployeeDaoImpl(EmployeeDaoImpl employeeDaoImpl) {
		this.employeeDaoImpl = employeeDaoImpl;
	}

	public DepartmentDaoImpl getDepartmentDaoImpl() {
		return departmentDaoImpl;
	}

	public void setDepartmentDaoImpl(DepartmentDaoImpl departmentDaoImpl) {
		this.departmentDaoImpl = departmentDaoImpl;
	}
	//根据id删除员工信息
	@Override
	public void deleteEmps(Integer empid) {
		employeeDaoImpl.deleteEmps(empid);
	}

	//根据id查询部门信息的方法,返回Depts实体
	@Override
	public Depts getDempartmentID(Integer deptid) {
		return departmentDaoImpl.getDempartmentID(deptid);
	}
	//查询部门所有信息的方法，返回list集合
	@Override
	public List<Depts> getDempartmentList() {
		return departmentDaoImpl.getDempartmentList();
	}

	@Override
	public List<Depts> getDempartmentList(Integer deptid) {
		return departmentDaoImpl.getDempartmentList(deptid);
	}

	@Override
	public Emps getEmpsID(Integer empid) {
		return employeeDaoImpl.getEmpsID(empid);
	}
	//查询出员工所有信息，返回list集合
	@Override
	public List<Emps> getEmpsList() {
		return employeeDaoImpl.getEmpsList();
	}
	//根据员工编号查询，返回list集合
	@Override
	public List<Emps> getEmpsList(Integer empid) {
		return employeeDaoImpl.getEmpsList(empid);
	}
	//添加员工信息
	@Override
	public void insertEmpsInfo(Emps emps) {
		employeeDaoImpl.insertEmpsInfo(emps);
	}
	//根据id修改员工信息
	@Override
	public void updateEmps(Emps emps) {
		employeeDaoImpl.updateEmps(emps);
	}
	
	
	
}
