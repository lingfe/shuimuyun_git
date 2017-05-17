package com.yyf.model;

import java.util.Date;

/**
 * 
  * 文件名：R_xiaordertab.java
  * 描述：   下单实体表
  * 修改人： 杨杰
  * 修改时间：2017年5月16日 下午3:49:20
  * 修改内容：
 */
public class R_xiaordertab {

	private String xiaId;//下单id	`xiaId` VARCHAR(64) NOT NULL,
	public String getXiaId() {
		return xiaId;
	}
	public void setXiaId(String xiaId) {
		this.xiaId = xiaId;
	}
	
	private String shopId;//商品id	`shopId` VARCHAR(64) NOT NULL,
	public String getShopId() {
		return shopId;
	}
	public void setShopId(String shopId) {
		this.shopId = shopId;
	}
	
	private String kuaikeId;//快客id	  		`kuaikeId` VARCHAR(64) NOT NULL,
	public String getKuaikeId() {
		return kuaikeId;
	}
	public void setKuaikeId(String kuaikeId) {
		this.kuaikeId = kuaikeId;
	}
	
	private String kuaikeName;//快客名称     		`kuaikeName` VARCHAR(11) NOT NULL,
	public String getKuaikeName() {
		return kuaikeName;
	}
	public void setKuaikeName(String kuaikeName) {
		this.kuaikeName = kuaikeName;
	}
	
	private String kuaikePhone;//快客电话		`kuaikePhone` VARCHAR(100) NOT NULL,
	public String getKuaikePhone() {
		return kuaikePhone;
	}
	public void setKuaikePhone(String kuaikePhone) {
		this.kuaikePhone = kuaikePhone;
	}
	
	private String kuaikeAddress;//快客地址    	`kuaikeAddress` VARCHAR(100) NOT NULL,
	public String getKuaikeAddress() {
		return kuaikeAddress;
	}
	public void setKuaikeAddress(String kuaikeAddress) {
		this.kuaikeAddress = kuaikeAddress;
	}
	
	private String shouhuoNmae;//收货人名称 		`shouhuoName` VARCHAR(11) NOT NULL,
	public String getShouhuoNmae() {
		return shouhuoNmae;
	}
	public void setShouhuoNmae(String shouhuoNmae) {
		this.shouhuoNmae = shouhuoNmae;
	}
	
	private String shouhuoShone;//收货人电话	`shouhuoShone` VARCHAR(11) NOT NULL,
	public String getShouhuoShone() {
		return shouhuoShone;
	}
	public void setShouhuoShone(String shouhuoShone) {
		this.shouhuoShone = shouhuoShone;
	}
	
	private String shouhuoAddress;//收货人地址	`shouhuoAddress` VARCHAR(100) NOT NULL,
	public String getShouhuoAddress() {
		return shouhuoAddress;
	}
	public void setShouhuoAddress(String shouhuoAddress) {
		this.shouhuoAddress = shouhuoAddress;
	}
	
	private Date quhuoDate;//去获取时间			`quhouDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	public Date getQuhuoDate() {
		return quhuoDate;
	}
	public void setQuhuoDate(Date quhuoDate) {
		this.quhuoDate = quhuoDate;
	}
	
	private Float kaikeProies;//运费			`kaikePrioes` DECIMAL(10,0) NOT NULL,
	public Float getKaikeProies() {
		return kaikeProies;
	}
	public void setKaikeProies(Float kaikeProies) {
		this.kaikeProies = kaikeProies;
	}
	
	private int status;//订单状态				`status` TINYINT(4) NOT NULL,
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	private Date okDate;//到达时间				`okDate` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00'
	public Date getOkDate() {
		return okDate;
	}
	public void setOkDate(Date okDate) {
		this.okDate = okDate;
	}
	@Override
	public String toString() {
		return "R_xiaordertab [xiaId=" + xiaId + ", shopId=" + shopId + ", kuaikeId=" + kuaikeId + ", kuaikeName="
				+ kuaikeName + ", kuaikePhone=" + kuaikePhone + ", kuaikeAddress=" + kuaikeAddress + ", shouhuoNmae="
				+ shouhuoNmae + ", shouhuoShone=" + shouhuoShone + ", shouhuoAddress=" + shouhuoAddress + ", quhuoDate="
				+ quhuoDate + ", kaikeProies=" + kaikeProies + ", status=" + status + ", okDate=" + okDate + "]";
	}
	
	
	
}
