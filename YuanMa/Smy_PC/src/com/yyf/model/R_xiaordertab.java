package com.yyf.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 
 * 文件名： R_xiaordertab.java 描述： 下单实体表 修改人： lijie 修改时间： 2017年5月16日 下午3:49:20 修改内容：
 */
public class R_xiaordertab {

	@Override
	public String toString() {
		return "R_xiaordertab [xiaId=" + xiaId + ", kuaikeName=" + kuaikeName + ", kuaikePhone=" + kuaikePhone
				+ ", kuaikeAddress=" + kuaikeAddress + ", shouhuoName=" + shouhuoName + ", shouhuoPhone=" + shouhuoPhone
				+ ", shouhuoAddress=" + shouhuoAddress + ", shouhuoAddressInfo=" + shouhuoAddressInfo + ", quhuoDate="
				+ quhouDate + ", kaikeProies=" + kaikeProies + ", status=" + status + ", okDate=" + okDate
				+ ", shopName=" + shopName + ", shopzholiang=" + shopzholiang + ", shopNumer=" + shopNumer
				+ ", shopprices=" + shopprices + ", shopGuige=" + shopGuige + ", shopDate=" + shopDate
				+ ", kuaikeAddressInfo=" + kuaikeAddressInfo + ", shopType=" + shopType + ", timeString=" + timeString
				+ ", shopImages=" + shopImages + ", payment=" + payment + "]";
	}

	private String xiaId;// 下单id `xiaId` VARCHAR(64) NOT NULL,

	public String getXiaId() {
		return xiaId;
	}

	public void setXiaId(String xiaId) {
		this.xiaId = xiaId;
	}

	private String kuaikeName;// 快客名称 `kuaikeName` VARCHAR(11) NOT NULL,

	public String getKuaikeName() {
		return kuaikeName;
	}

	public void setKuaikeName(String kuaikeName) {
		this.kuaikeName = kuaikeName;
	}

	private String kuaikePhone;// 快客电话 `kuaikePhone` VARCHAR(100) NOT NULL,

	public String getKuaikePhone() {
		return kuaikePhone;
	}

	public void setKuaikePhone(String kuaikePhone) {
		this.kuaikePhone = kuaikePhone;
	}

	private String kuaikeAddress;// 快客地址 `kuaikeAddress` VARCHAR(100) NOT NULL,

	public String getKuaikeAddress() {
		return kuaikeAddress;
	}

	public void setKuaikeAddress(String kuaikeAddress) {
		this.kuaikeAddress = kuaikeAddress;
	}

	private String shouhuoName;// 收货人名称 `shouhuoName` VARCHAR(11) NOT NULL,

	public String getShouhuoNmae() {
		return shouhuoName;
	}

	public void setShouhuoNmae(String shouhuoName) {
		this.shouhuoName = shouhuoName;
	}

	private String shouhuoPhone;// 收货人电话 `shouhuoShone` VARCHAR(11) NOT NULL,

	public String getShouhuoShone() {
		return shouhuoPhone;
	}

	public void setShouhuoShone(String shouhuoPhone) {
		this.shouhuoPhone = shouhuoPhone;
	}

	private String shouhuoAddress;// 收货人地址 `shouhuoAddress` VARCHAR(100) NOT
									// NULL,

	public String getShouhuoAddress() {
		return shouhuoAddress;
	}

	public void setShouhuoAddress(String shouhuoAddress) {
		this.shouhuoAddress = shouhuoAddress;
	}

	private String shouhuoAddressInfo;// 收货人地址详情

	public String getShouhuoAddressInfo() {
		return shouhuoAddressInfo;
	}

	public void setShouhuoAddressInfo(String shouhuoAddressInfo) {
		this.shouhuoAddressInfo = shouhuoAddressInfo;
	}

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date quhouDate;// 去获取时间 `quhouDate` TIMESTAMP NOT NULL DEFAULT
							// CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

	public Date getQuhuoDate() {
		return quhouDate;
	}

	public void setQuhuoDate(Date quhouDate) {
		this.quhouDate = quhouDate;
	}

	private Float kaikeProies;// 运费 `kaikePrioes` DECIMAL(10,0) NOT NULL,

	public Float getKaikeProies() {
		return kaikeProies;
	}

	public void setKaikeProies(Float kaikeProies) {
		this.kaikeProies = kaikeProies;
	}

	private int status;// 订单状态(0=未接单,1={配送中，已接单}，2=已到达（点击确认到达，修改抢单状态）) `status`
						// TINYINT(4) NOT NULL,

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date okDate;// 到达时间 `okDate` TIMESTAMP NOT NULL DEFAULT '0000-00-00
						// 00:00:00'

	public Date getOkDate() {
		return okDate;
	}

	public void setOkDate(Date okDate) {
		this.okDate = okDate;
	}

	private String shopName;// `shopName` VARCHAR(64) NOT NULL COMMENT '商品名称',

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	private float shopzholiang;// `Shopzholiang` FLOAT NOT NULL COMMENT '商品重量',

	public float getShopzholiang() {
		return shopzholiang;
	}

	public void setShopzholiang(float shopzholiang) {
		this.shopzholiang = shopzholiang;
	}

	private int shopNumer;// `ShopNumer`INT(11) NOT NULL DEFAULT 0 COMMENT '库存',

	public int getShopNumer() {
		return shopNumer;
	}

	public void setShopNumer(int shopNumer) {
		this.shopNumer = shopNumer;
	}

	private float shopprices;// `Shopprices` FLOAT NOT NULL COMMENT '商品价格',

	public float getShopprices() {
		return shopprices;
	}

	public void setShopprices(float shopprices) {
		this.shopprices = shopprices;
	}

	private String shopGuige;// `shopguige` varchar(100) NOT NULL COMMENT
								// '商品规格',

	public String getShopGuige() {
		return shopGuige;
	}

	public void setShopGuige(String shopGuige) {
		this.shopGuige = shopGuige;
	}

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date shopDate;// `Shopdate` TIMESTAMP NOT NULL DEFAULT '0000-00-00
							// 00:00:00' COMMENT '上架时间',

	public Date getShopDate() {
		return shopDate;
	}

	public void setShopDate(Date shopDate) {
		this.shopDate = shopDate;
	}

	/****************************/
	/** add lijie 2017-05-24 ******/
	/****************************/

	private String kuaikeAddressInfo;// `kuaikeAddressInfo` VARCHAR(200) DEFAULT
										// NULL COMMENT '快客详细地址',

	public String getKuaikeAddressInfo() {
		return kuaikeAddressInfo;
	}

	public void setKuaikeAddressInfo(String kuaikeAddressInfo) {
		this.kuaikeAddressInfo = kuaikeAddressInfo;
	}

	private int shopType;// `shopType` INT(11) NOT NULL DEFAULT '0' COMMENT
							// '货物类型',

	public int getShopType() {
		return shopType;
	}

	public void setShopType(int shopType) {
		this.shopType = shopType;
	}

	private String timeString;// `timeString` VARCHAR(10) NOT NULL DEFAULT '0'
								// COMMENT '最快取货时间',

	public String getTimeString() {
		return timeString;
	}

	public void setTimeString(String timeString) {
		this.timeString = timeString;
	}

	private String shopImages;// `shopImages` VARCHAR(255) NOT NULL COMMENT
								// '商品图片',

	public String getShopImages() {
		return shopImages;
	}

	public void setShopImages(String shopImages) {
		this.shopImages = shopImages;
	}

	private int payment;// `payment` INT(11) NOT NULL DEFAULT '0' COMMENT '是否付款'

	public int getPayment() {
		return payment;
	}

	public void setPayment(int payment) {
		this.payment = payment;
	}
}
