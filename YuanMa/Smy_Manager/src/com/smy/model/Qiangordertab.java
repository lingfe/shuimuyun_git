package com.smy.model;

import java.util.Date;
/**
  * 文件名：Qiangordertab.java
  * 描述： 抢单实体
  * 修改人： YangJie
  * 修改时间：2017年6月9日 下午6:00:07
  * 修改内容：
 */
public class Qiangordertab {
	private String qiangId;// '快客抢单标识',

	private String xiaId;// '下单id',

	private String kuaikeId;//'快客id',

	private Integer status;// 0 
							// '状态',状态(0=抢单成功，1=抢单失败，2=等待取货，3=等待配送（点击确认配送），4=已经到达（修改下单状态2，确认到达），5=派单成功)
	
	private Xiaordertab xiaordertab;
	
	
	public String getQiangId() {
		return qiangId;
	}


	public void setQiangId(String qiangId) {
		this.qiangId = qiangId;
	}


	public String getXiaId() {
		return xiaId;
	}


	public void setXiaId(String xiaId) {
		this.xiaId = xiaId;
	}


	public String getKuaikeId() {
		return kuaikeId;
	}


	public void setKuaikeId(String kuaikeId) {
		this.kuaikeId = kuaikeId;
	}


	public Integer getStatus() {
		return status;
	}


	public void setStatus(Integer status) {
		this.status = status;
	}


	public Xiaordertab getXiaordertab() {
		return xiaordertab;
	}


	public void setXiaordertab(Xiaordertab xiaordertab) {
		this.xiaordertab = xiaordertab;
	}


	public Date getQiangDate() {
		return qiangDate;
	}


	public void setQiangDate(Date qiangDate) {
		this.qiangDate = qiangDate;
	}


	private Date qiangDate;// '抢单时间',


	public Qiangordertab(String qiangId, String xiaId, String kuaikeId, Integer status, Xiaordertab xiaordertab,
			Date qiangDate) {
		super();
		this.qiangId = qiangId;
		this.xiaId = xiaId;
		this.kuaikeId = kuaikeId;
		this.status = status;
		this.xiaordertab = xiaordertab;
		this.qiangDate = qiangDate;
	}


	public Qiangordertab() {
		super();
		// TODO Auto-generated constructor stub
	}


	@Override
	public String toString() {
		return "Qiangordertab [qiangId=" + qiangId + ", xiaId=" + xiaId + ", kuaikeId=" + kuaikeId + ", status="
				+ status + ", xiaordertab=" + xiaordertab + ", qiangDate=" + qiangDate + "]";
	}

	

}
