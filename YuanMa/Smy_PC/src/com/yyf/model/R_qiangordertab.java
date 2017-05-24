package com.yyf.model;

import java.util.Date;

/**
 * 文件名：R_qiangordertab.java 描述： 快客抢单 修改人： 杨杰 修改时间：2017年5月18日 下午6:22:56 修改内容：
 */
public class R_qiangordertab {
	private String qiangId;// `qiangId` VARCHAR(64) NOT NULL COMMENT '快客抢单标识',

	private String xiaId;// `xiaId` VARCHAR(64) NOT NULL COMMENT '下单id',

	private String kuaikeId;// `kuaikeId` VARCHAR(64) NOT NULL COMMENT '快客id',

	private Integer status;// `status` TINYINT(4) NOT NULL DEFAULT 0 //
							// '状态',状态(0=抢单成功，1=抢单失败，2=等待取货，3=等待配送（点击确认配送），4=已经到达（修改下单状态2，确认到达），5=派单成功)

	private Date qiangDate;// `qiangDate` CURRENT_TIMESTAMP '抢单时间',

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

	public Date getQiangDate() {
		return qiangDate;
	}

	public void setQiangDate(Date qiangDate) {
		this.qiangDate = qiangDate;
	}

	public R_qiangordertab() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * 有参构造器的方法
	 * 
	 * @param qiangId
	 *            抢单ID
	 * @param xiaId
	 *            下单Id
	 * @param kuaikeId
	 *            快客 ID
	 * @param status
	 *            状态
	 * @param qiangDate
	 *            抢单时间
	 */
	public R_qiangordertab(String qiangId, String xiaId, String kuaikeId, Integer status, Date qiangDate) {
		super();
		this.qiangId = qiangId;
		this.xiaId = xiaId;
		this.kuaikeId = kuaikeId;
		this.status = status;
		this.qiangDate = qiangDate;
	}

	/**
	 * ToString()
	 * 
	 * @author 杨杰
	 * @created 2017年5月18日 下午6:24:00
	 * @return
	 */
	@Override
	public String toString() {
		return "R_qiangordertab [qiangId=" + qiangId + ", xiaId=" + xiaId + ", kuaikeId=" + kuaikeId + ", status="
				+ status + ", qiangDate=" + qiangDate + "]";
	}

}
