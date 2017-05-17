package com.zuxia.ssm.model;

public class Depts {

	private Integer deptId;
	
	private String deptName;

	public Integer getDeptId() {
		return deptId;
	}

	public void setDeptId(Integer deptId) {
		this.deptId = deptId;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public Depts() {
		super();
	}

	public Depts(Integer deptId, String deptName) {
		super();
		this.deptId = deptId;
		this.deptName = deptName;
	}

	@Override
	public String toString() {
		return "Depts [deptId=" + deptId + ", deptName=" + deptName + "]";
	}
	
	
}
