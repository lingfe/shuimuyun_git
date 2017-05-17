package com.zuxia.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.zuxia.model.Depts;
import com.zuxia.model.Emps;
import com.zuxia.service.IEmployeeService;
import com.zuxia.service.impl.EmployeeServiceImpl;

/**
 * 处理用户的请求，表示层
 * @author Administrator lixiaojie
 * @version 1.0
 * @datetime 2016-10-21 20:32
 * 
 */
@SuppressWarnings("serial")
public class EmployeeAction extends ActionSupport {
	
	//映射EmployeeServiceImpl
	private IEmployeeService employeeServiceImpl;

	public IEmployeeService getEmployeeServiceImpl() {
		return employeeServiceImpl;
	}

	public void setEmployeeServiceImpl(IEmployeeService employeeServiceImpl) {
		this.employeeServiceImpl = employeeServiceImpl;
	}
	

	private Emps emps;

	public Emps getEmps() {
		return emps;
	}

	public void setEmps(Emps emps) {
		this.emps = emps;
	}
	
	/**
	 * 修改员工信息
	 */
	public String update(){
		employeeServiceImpl.updateEmps(emps);
		return query();
	}
	
	/**
	 * 添加员工
	 */
	public String insert(){
		employeeServiceImpl.insertEmpsInfo(emps);
		return query();
	}
	

	/**
	 * 查询所有员工信息
	 * @return
	 */
	public String query() {
		System.out.println("123456");
		//得到数据
		List<Emps> empsList = employeeServiceImpl.getEmpsList();
		//放入request对象中
		ServletActionContext.getRequest().setAttribute("employeeList", empsList);
		
		return "query";
	}
	
	/**
	 * 修改员工信息之前调用的方法
	 */
	public String updateSelect(){
		//得到数据
		Emps empsID = employeeServiceImpl.getEmpsID(emps.getEmpId());
		//设置到request
		ServletActionContext.getRequest().setAttribute("emp", empsID);
		
		//得到部门list
		List<Depts> dempartmentList = employeeServiceImpl.getDempartmentList();
		//设置到request
		ServletActionContext.getRequest().setAttribute("departmentList", dempartmentList);
		
		return "update";
		
	}
	
	/**
	 * 删除
	 */
	public String delete(){
		employeeServiceImpl.deleteEmps(emps.getEmpId());
		return query();
	}
	
	
}
