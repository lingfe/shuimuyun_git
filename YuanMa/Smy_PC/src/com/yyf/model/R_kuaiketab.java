package com.yyf.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
  * 文件名：R_kuaiketab.java
  * 描述： 快客申请(注册)/登陆
  * 修改人： 杨杰
  * 修改时间：2017年5月17日 下午5:39:54
  * 修改内容：
 */
public class R_kuaiketab {

	private String kuaikeId;// 唯一标示列 Id
	private String kuaikeName; // 姓名
	private String kuaikePhone;// 电话
	private String kuaikeAddress;// 地址
	private String kuaikeShenfenZF;// 身份证正反面
	private String kuaikeShouchiSFZ;// 手持身份证正反面
	private Integer kuaikeStatus;// 状态
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date kuaikeShengqingDate;// 快客申请时间
	private String password;// 密码
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date loginDate;// 登陆时间

	public String getKuaikeId() {
		return kuaikeId;
	}

	public void setKuaikeId(String kuaikeId) {
		this.kuaikeId = kuaikeId;
	}

	public String getKuaikeName() {
		return kuaikeName;
	}

	public void setKuaikeName(String kuaikeName) {
		this.kuaikeName = kuaikeName;
	}

	public String getKuaikePhone() {
		return kuaikePhone;
	}

	public void setKuaikePhone(String kuaikePhone) {
		this.kuaikePhone = kuaikePhone;
	}

	public String getKuaikeAddress() {
		return kuaikeAddress;
	}

	public void setKuaikeAddress(String kuaikeAddress) {
		this.kuaikeAddress = kuaikeAddress;
	}

	public String getKuaikeShenfenZF() {
		return kuaikeShenfenZF;
	}

	public void setKuaikeShenfenZF(String kuaikeShenfenZF) {
		this.kuaikeShenfenZF = kuaikeShenfenZF;
	}

	public String getKuaikeShouchiSFZ() {
		return kuaikeShouchiSFZ;
	}

	public void setKuaikeShouchiSFZ(String kuaikeShouchiSFZ) {
		this.kuaikeShouchiSFZ = kuaikeShouchiSFZ;
	}

	public Integer getKuaikeStatus() {
		return kuaikeStatus;
	}

	public void setKuaikeStatus(Integer kuaikeStatus) {
		this.kuaikeStatus = kuaikeStatus;
	}

	public Date getKuaikeShengqingDate() {
		return kuaikeShengqingDate;
	}

	public void setKuaikeShengqingDate(Date kuaikeShengqingDate) {
		this.kuaikeShengqingDate = kuaikeShengqingDate;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getLoginDate() {
		return loginDate;
	}

	public void setLoginDate(Date loginDate) {
		this.loginDate = loginDate;
	}

	public R_kuaiketab() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "R_userEntity [kuaikeId=" + kuaikeId + ", kuaikeName=" + kuaikeName + ", kuaikePhone=" + kuaikePhone
				+ ", kuaikeAddress=" + kuaikeAddress + ", kuaikeShenfenF=" +  ", kuaikeShenfenZF="
				+ kuaikeShenfenZF + ", kuaikeShouchiSFZ=" + kuaikeShouchiSFZ + ", kuaikeStatus=" + kuaikeStatus
				+ ", kuaikeShengqingDate=" + kuaikeShengqingDate + ", password=" + password + ", loginDate=" + loginDate
				+ "]";
	}

	public R_kuaiketab(String kuaikeId, String kuaikeName, String kuaikePhone, String kuaikeAddress,
			String kuaikeShenfenZF, String kuaikeShouchiSFZ, Integer kuaikeStatus,
			Date kuaikeShengqingDate, String password, Date loginDate) {
		super();
		this.kuaikeId = kuaikeId;
		this.kuaikeName = kuaikeName;
		this.kuaikePhone = kuaikePhone;
		this.kuaikeAddress = kuaikeAddress;
		this.kuaikeShenfenZF = kuaikeShenfenZF;
		this.kuaikeShouchiSFZ = kuaikeShouchiSFZ;
		this.kuaikeStatus = kuaikeStatus;
		this.kuaikeShengqingDate = kuaikeShengqingDate;
		this.password = password;
		this.loginDate = loginDate;
	}

}
