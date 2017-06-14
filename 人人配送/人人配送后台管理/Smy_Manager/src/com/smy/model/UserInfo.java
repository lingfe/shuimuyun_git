package com.smy.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 文件名：UserInfo.java 描述： 管理员实体 修改人： YangJie 修改时间：2017年6月9日 下午6:00:44 修改内容：
 */
public class UserInfo {

	private Integer userid;

	private String uname;

	private String upwd;

	private String uremark;

	private String uphone;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date loginDate;

	public Date getLoginDate() {
		return loginDate;
	}

	public UserInfo(Integer userid, String uname, String upwd, String uremark, String uphone, Date loginDate,
			int uStatus) {
		super();
		this.userid = userid;
		this.uname = uname;
		this.upwd = upwd;
		this.uremark = uremark;
		this.uphone = uphone;
		this.loginDate = loginDate;
		this.uStatus = uStatus;
	}

	public void setLoginDate(Date loginDate) {
		this.loginDate = loginDate;
	}

	public int getuStatus() {
		return uStatus;
	}

	public void setuStatus(int uStatus) {
		this.uStatus = uStatus;
	}

	private int uStatus;

	public String getUphone() {
		return uphone;
	}

	public void setUphone(String uphone) {
		this.uphone = uphone;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpwd() {
		return upwd;
	}

	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}

	public String getUremark() {
		return uremark;
	}

	public void setUremark(String uremark) {
		this.uremark = uremark;
	}

	public UserInfo() {
		super();
	}

}
