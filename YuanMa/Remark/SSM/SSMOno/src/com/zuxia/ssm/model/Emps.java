package com.zuxia.ssm.model;

import java.util.Date;

public class Emps {

	private Integer empId;
	
	private String empName;
	
	private Double salary;
	
	private Date birthday;
	
	private String telephone;
	
	private Depts depts;

	public Integer getEmpId() {
		return empId;
	}

	public void setEmpId(Integer empId) {
		this.empId = empId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public Double getSalary() {
		return salary;
	}

	public void setSalary(Double salary) {
		this.salary = salary;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public Depts getDepts() {
		return depts;
	}

	public void setDepts(Depts depts) {
		this.depts = depts;
	}

	public Emps(Integer empId, String empName, Double salary, Date birthday,
			String telephone, Depts depts) {
		super();
		this.empId = empId;
		this.empName = empName;
		this.salary = salary;
		this.birthday = birthday;
		this.telephone = telephone;
		this.depts = depts;
	}

	public Emps() {
		super();
	}

	@Override
	public String toString() {
		return "Emps [birthday=" + birthday + ", depts=" + depts + ", empId="
				+ empId + ", empName=" + empName + ", salary=" + salary
				+ ", telephone=" + telephone + "]";
	}
	
	
	
}
