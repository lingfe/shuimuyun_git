package com.zuxia.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Depts entity. @author MyEclipse Persistence Tools
 */

public class Depts implements java.io.Serializable {

	// Fields

	private Integer deptId;
	private String deptName;
	private Set empses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Depts() {
	}

	/** full constructor */
	public Depts(String deptName, Set empses) {
		this.deptName = deptName;
		this.empses = empses;
	}

	// Property accessors

	public Integer getDeptId() {
		return this.deptId;
	}

	public void setDeptId(Integer deptId) {
		this.deptId = deptId;
	}

	public String getDeptName() {
		return this.deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public Set getEmpses() {
		return this.empses;
	}

	public void setEmpses(Set empses) {
		this.empses = empses;
	}

}