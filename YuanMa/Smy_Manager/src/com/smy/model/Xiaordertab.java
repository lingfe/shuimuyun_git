package com.smy.model;

import java.util.Date;
/**
  * 文件名：Xiaordertab.java
  * 描述： 下单实体
  * 修改人： YangJie
  * 修改时间：2017年6月9日 下午6:01:05
  * 修改内容：
 */
public class Xiaordertab {
	
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

	public String getShouhuoName() {
		return shouhuoName;
	}

	public void setShouhuoName(String shouhuoName) {
		this.shouhuoName = shouhuoName;
	}

	private String shouhuoPhone;// 收货人电话 `shouhuoShone` VARCHAR(11) NOT NULL,

	

	public String getShouhuoPhone() {
		return shouhuoPhone;
	}

	public Date getQuhouDate() {
		return quhouDate;
	}

	public void setQuhouDate(Date quhouDate) {
		this.quhouDate = quhouDate;
	}

	public void setShouhuoPhone(String shouhuoPhone) {
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

	private Date quhouDate;// 去获取时间 `quhouDate` TIMESTAMP NOT NULL DEFAULT
							// CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

	public Date getQuhuoDate() {
		return quhouDate;
	}

	public void setQuhuoDate(Date quhouDate) {
		this.quhouDate = quhouDate;
	}

	private Float kaikePrioes;// 运费 `kaikePrioes` DECIMAL(10,0) NOT NULL,
	public Float getKaikePrioes() {
		return kaikePrioes;
	}

	public void setKaikePrioes(Float kaikePrioes) {
		this.kaikePrioes = kaikePrioes;
	}

	private int status;// 订单状态(0=未接单,1={配送中，已接单}，2=已到达（点击确认到达，修改抢单状态）) `status`
						// TINYINT(4) NOT NULL,

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

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
	private Date shopDate;// `Shopdate` TIMESTAMP NOT NULL DEFAULT '0000-00-00
							// 00:00:00' COMMENT '上架时间',

	public Date getShopDate() {
		return shopDate;
	}

	public void setShopDate(Date shopDate) {
		this.shopDate = shopDate;
	}



	private String kuaikeAddressInfo;// `kuaikeAddressInfo` VARCHAR(200) DEFAULT
										// NULL COMMENT '快客详细地址',

	public String getKuaikeAddressInfo() {
		return kuaikeAddressInfo;
	}

	public void setKuaikeAddressInfo(String kuaikeAddressInfo) {
		this.kuaikeAddressInfo = kuaikeAddressInfo;
	}

	private String shopType;// `shopType` INT(11) NOT NULL DEFAULT '0' COMMENT
							// '货物类型',

	public String getShopType() {
		return shopType;
	}

	public void setShopType(String shopType) {
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
	
	/**
	 * 
	 * @param xiaId
	 * @param kuaikeName
	 * @param kuaikePhone
	 * @param kuaikeAddress
	 * @param shouhuoName
	 * @param shouhuoPhone
	 * @param shouhuoAddress
	 * @param shouhuoAddressInfo
	 * @param quhouDate
	 * @param kaikePrioes
	 * @param status
	 * @param okDate
	 * @param shopName
	 * @param shopzholiang
	 * @param shopNumer
	 * @param shopprices
	 * @param shopGuige
	 * @param shopDate
	 * @param kuaikeAddressInfo
	 * @param shopType
	 * @param timeString
	 * @param shopImages
	 * @param payment
	 */
	public Xiaordertab(String xiaId, String kuaikeName, String kuaikePhone, String kuaikeAddress, String shouhuoName,
			String shouhuoPhone, String shouhuoAddress, String shouhuoAddressInfo, Date quhouDate, Float kaikePrioes,
			int status, Date okDate, String shopName, float shopzholiang, int shopNumer, float shopprices,
			String shopGuige, Date shopDate, String kuaikeAddressInfo, String shopType, String timeString,
			String shopImages, int payment) {
		super();
		this.xiaId = xiaId;
		this.kuaikeName = kuaikeName;
		this.kuaikePhone = kuaikePhone;
		this.kuaikeAddress = kuaikeAddress;
		this.shouhuoName = shouhuoName;
		this.shouhuoPhone = shouhuoPhone;
		this.shouhuoAddress = shouhuoAddress;
		this.shouhuoAddressInfo = shouhuoAddressInfo;
		this.quhouDate = quhouDate;
		this.kaikePrioes = kaikePrioes;
		this.status = status;
		this.okDate = okDate;
		this.shopName = shopName;
		this.shopzholiang = shopzholiang;
		this.shopNumer = shopNumer;
		this.shopprices = shopprices;
		this.shopGuige = shopGuige;
		this.shopDate = shopDate;
		this.kuaikeAddressInfo = kuaikeAddressInfo;
		this.shopType = shopType;
		this.timeString = timeString;
		this.shopImages = shopImages;
		this.payment = payment;
	}


	public Xiaordertab() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String toString() {
		return "Xiaordertab [xiaId=" + xiaId + ", kuaikeName=" + kuaikeName + ", kuaikePhone=" + kuaikePhone
				+ ", kuaikeAddress=" + kuaikeAddress + ", shouhuoName=" + shouhuoName + ", shouhuoPhone=" + shouhuoPhone
				+ ", shouhuoAddress=" + shouhuoAddress + ", shouhuoAddressInfo=" + shouhuoAddressInfo + ", quhouDate="
				+ quhouDate + ", kaikePrioes=" + kaikePrioes + ", status=" + status + ", okDate=" + okDate
				+ ", shopName=" + shopName + ", shopzholiang=" + shopzholiang + ", shopNumer=" + shopNumer
				+ ", shopprices=" + shopprices + ", shopGuige=" + shopGuige + ", shopDate=" + shopDate
				+ ", kuaikeAddressInfo=" + kuaikeAddressInfo + ", shopType=" + shopType + ", timeString=" + timeString
				+ ", shopImages=" + shopImages + ", payment=" + payment + "]";
	}
	
	
}
