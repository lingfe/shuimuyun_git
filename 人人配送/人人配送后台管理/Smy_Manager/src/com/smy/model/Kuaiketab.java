package com.smy.model;

import java.util.Date;

/**
  * 文件名：Kuaiketab.java
  * 描述： 快客信息
  * 修改人： YangJie
  * 修改时间：2017年6月9日 下午5:58:56
  * 修改内容：
 */
public class Kuaiketab {

	private String kuaikeId;// 唯一标示列 Id
	private String kuaikeName; // 姓名
	private String kuaikePhone;// 电话
	private String kuaikeAddress;// 地址
	private String kuaikeShenfenZF;// 身份证正反面
	private String kuaikeShouchiSFZ;// 手持身份证正反面
	private Integer kuaikeStatus;// 状态
	private Date kuaikeShengqingDate;// 快客申请时间
	private String password;// 密码
	private Date loginDate;// 登陆时间
	private String kuaikeAddressInfo;// 详情地址

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

	public String getKuaikeAddressInfo() {
		return kuaikeAddressInfo;
	}

	public void setKuaikeAddressInfo(String kuaikeAddressInfo) {
		this.kuaikeAddressInfo = kuaikeAddressInfo;
	}

	/**
	 * @param kuaikeId
	 * @param kuaikeName
	 * @param kuaikePhone
	 * @param kuaikeAddress
	 * @param kuaikeShenfenZF
	 * @param kuaikeShouchiSFZ
	 * @param kuaikeStatus
	 * @param kuaikeShengqingDate
	 * @param password
	 * @param loginDate
	 * @param kuaikeAddressInfo
	 */
	public Kuaiketab(String kuaikeId, String kuaikeName, String kuaikePhone, String kuaikeAddress,
			String kuaikeShenfenZF, String kuaikeShouchiSFZ, Integer kuaikeStatus, Date kuaikeShengqingDate,
			String password, Date loginDate, String kuaikeAddressInfo) {
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
		this.kuaikeAddressInfo = kuaikeAddressInfo;
	}

	/**
	 * 无参构造器
	 */
	public Kuaiketab() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Kuaiketab [kuaikeId=" + kuaikeId + ", kuaikeName=" + kuaikeName + ", kuaikePhone=" + kuaikePhone
				+ ", kuaikeAddress=" + kuaikeAddress + ", kuaikeShenfenZF=" + kuaikeShenfenZF + ", kuaikeShouchiSFZ="
				+ kuaikeShouchiSFZ + ", kuaikeStatus=" + kuaikeStatus + ", kuaikeShengqingDate=" + kuaikeShengqingDate
				+ ", password=" + password + ", loginDate=" + loginDate + ", kuaikeAddressInfo=" + kuaikeAddressInfo
				+ "]";
	}

}
