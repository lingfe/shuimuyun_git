package com.yyf.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 
  * 文件名：Commenttab.java
  * 描述： 	下单评论表
  * 修改人： lijie
  * 修改时间：2017年5月23日 下午2:22:58
  * 修改内容：
 */
public class Commenttab {

	private String commentId;//  `commentId` VARCHAR(64) NOT NULL COMMENT '评论信息表标识',
	public String getCommentId() {
		return commentId;
	}
	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}
	
	private String kuaikeId;//	  `kuaikeId` VARCHAR(64) NOT NULL COMMENT '快客id',
	public String getKuaikeId() {
		return kuaikeId;
	}
	public void setKuaikeId(String kuaikeId) {
		this.kuaikeId = kuaikeId;
	}
	
	private String xiaId;//	  `xiaId` VARCHAR(64) NOT NULL COMMENT '下单id',
	public String getXiaId() {
		return xiaId;
	}
	public void setXiaId(String xiaId) {
		this.xiaId = xiaId;
	}
	
	private int star;//	  `star` INT(11) DEFAULT NULL COMMENT '星评',
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	
	private String remark;//	  `remark` TEXT COMMENT '评论内容',
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date commentDate;//	  `commentDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '评论时间'
	public Date getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}
	
	@Override
	public String toString() {
		return "Commenttab [commentId=" + commentId + ", kuaikeId=" + kuaikeId + ", xiaId=" + xiaId + ", star=" + star
				+ ", remark=" + remark + ", commentDate=" + commentDate + "]";
	}
	
	
}
