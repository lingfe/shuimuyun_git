package com.yyf.model;

import java.util.Date;

/**
 * 文件名：R_kuaiketab.java 描述： 快客申请(注册)/登陆 修改人： 杨杰 修改时间：2017年5月17日 下午5:39:54 修改内容：
 */
public class R_kuaiketab {

	private String kuaikeId;// 唯一标示列 Id
	private String kuaikeName; // 姓名
	private String kuaikePhone;// 电话
	private String kuaikeAddress;// 地址
	private String kuaikeShenfenZF;// 身份证正面
	private String kuaikeShouchiSFZ;// 手持身份证正反面
	private Integer kuaikeStatus;// 状态
	private Date kuaikeShengqingDate;// 快客申请时间
	private String password;// 密码
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

	public String getKuaikeShenfenZF() {
		return kuaikeShenfenZF;
	}

	public void setKuaikeShenfenZF(String kuaikeShenfenZF) {
		this.kuaikeShenfenZF = kuaikeShenfenZF;
	}

	

	public R_kuaiketab() {
		super();
	}

	/**
	 * @param kuaikeId            快客唯一标示列 ID
	 * @param kuaikeName          快客姓名  
	 * @param kuaikePhone         快客手机号
	 * @param kuaikeAddress       快客地址   详情地址 
	 * @param kuaikeShenfenZF     快客身份复印件正反
	 * @param kuaikeShouchiSFZ    快客手持身份证正反
	 * @param kuaikeStatus        快客申请状态    默认为0
	 * @param kuaikeShengqingDate 快客申请时间   系统默认时间
	 * @param password            快客登陆密码
	 * @param loginDate           快客登陆记录时间    系统默认时间
	 */
	public R_kuaiketab(String kuaikeId, String kuaikeName, String kuaikePhone, String kuaikeAddress,
			String kuaikeShenfenZF, String kuaikeShouchiSFZ, Integer kuaikeStatus, Date kuaikeShengqingDate,
			String password, Date loginDate) {
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

	/**
	 * ToString()
	 * @author 杨杰     
	 * @created 2017年5月19日 下午2:10:04  
	 * @return
	 */
	@Override
	public String toString() {
		return "R_kuaiketab [kuaikeId=" + kuaikeId + ", kuaikeName=" + kuaikeName + ", kuaikePhone=" + kuaikePhone
				+ ", kuaikeAddress=" + kuaikeAddress + ", kuaikeShenfenZF=" + kuaikeShenfenZF + ", kuaikeShouchiSFZ="
				+ kuaikeShouchiSFZ + ", kuaikeStatus=" + kuaikeStatus + ", kuaikeShengqingDate=" + kuaikeShengqingDate
				+ ", password=" + password + ", loginDate=" + loginDate + "]";
	}


}
