package com.zuxia.model;

import java.util.Date;

/**
 * Emps entity. @author MyEclipse Persistence Tools
 */

public class Emps implements java.io.Serializable {

	// Fields

	private Integer empId;
	private Depts depts;
	private String empName;
	private Double salary;
	private Date birthday;
	private String telephone;

	// Constructors

	/** default constructor */
	public Emps() {
	}

	/** full constructor */
	public Emps(Depts depts, String empName, Double salary, Date birthday,
			String telephone) {
		this.depts = depts;
		this.empName = empName;
		this.salary = salary;
		this.birthday = birthday;
		this.telephone = telephone;
	}

	// Property accessors

	public Integer getEmpId() {
		return this.empId;
	}

	public void setEmpId(Integer empId) {
		this.empId = empId;
	}

	public Depts getDepts() {
		return this.depts;
	}

	public void setDepts(Depts depts) {
		this.depts = depts;
	}

	public String getEmpName() {
		return this.empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public Double getSalary() {
		return this.salary;
	}

	public void setSalary(Double salary) {
		this.salary = salary;
	}

	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

}