package com.yyf.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 
  * 文件名：Feedbacktag.java
  * 描述： 意见反馈，实体类
  * 修改人： lijie
  * 修改时间：2017年6月17日 下午9:31:31
  * 修改内容：
 */
public class Feedbacktag {
	
	private String feedbackId;//  `feedbackId` VARCHAR(100) NOT NULL COMMENT '意见反馈id',
	public String getFeedbackId() {
		return feedbackId;
	}
	public void setFeedbackId(String feedbackId) {
		this.feedbackId = feedbackId;
	}
	
	private String kuaikeId;//VARCHAR(100) NOT NULL COMMENT '快客id',
	public String getKuaikeId() {
		return kuaikeId;
	}
	public void setKuaikeId(String kuaikeId) {
		this.kuaikeId = kuaikeId;
	}
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date feedbackDate;//TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '反馈时间',
	public Date getFeedbackDate() {
		return feedbackDate;
	}
	public void setFeedbackDate(Date feedbackDate) {
		this.feedbackDate = feedbackDate;
	}

	private int status;//	`status` INT(11) DEFAULT NULL COMMENT '反馈状态:0未查看，1已查看,3，未处理，4已处理',
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}

	private String remark;//`remark` TEXT COMMENT '反馈内容',
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	@Override
	public String toString() {
		return "Feedbacktag [feedbackId=" + feedbackId + ", kuaikeId=" + kuaikeId + ", feedbackDate=" + feedbackDate
				+ ", status=" + status + ", remark=" + remark + "]";
	}
	public Feedbacktag() {
		super();
	}
	
	public Feedbacktag(String feedbackId, String kuaikeId, Date feedbackDate, int status, String remark) {
		super();
		this.feedbackId = feedbackId;
		this.kuaikeId = kuaikeId;
		this.feedbackDate = feedbackDate;
		this.status = status;
		this.remark = remark;
	}
	
	
}
