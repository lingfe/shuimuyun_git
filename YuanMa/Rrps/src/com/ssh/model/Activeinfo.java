package com.ssh.model;

import java.util.Date;

import org.hibernate.annotations.Entity;
import org.hibernate.annotations.Table;






/**
 * Activeinfo entity. @author MyEclipse Persistence Tools
 */
@Entity
@SuppressWarnings("serial")
public class Activeinfo implements java.io.Serializable {

	// Fields
	private Integer aiId;
	private String aiName;
	private Date aiBeginTime;
	private Date aiEndTime;
	private String aiPhoto;
	private String aiContent;
	private Integer aiStatus;
	private Integer aiScore;
	private String aiGiftName;
	private Integer aiCount;

	// Constructors

	/** default constructor */
	public Activeinfo() {
	}

	/** full constructor */
	public Activeinfo(Integer aiId, String aiName, Date aiBeginTime,
			Date aiEndTime, String aiPhoto, String aiContent, Integer aiStatus,
			Integer aiScore, String aiGiftName, Integer aiCount) {
		super();
		this.aiId = aiId;
		this.aiName = aiName;
		this.aiBeginTime = aiBeginTime;
		this.aiEndTime = aiEndTime;
		this.aiPhoto = aiPhoto;
		this.aiContent = aiContent;
		this.aiStatus = aiStatus;
		this.aiScore = aiScore;
		this.aiGiftName = aiGiftName;
		this.aiCount = aiCount;
	}

	// Property accessors

	public Integer getAiId() {
		return this.aiId;
	}

	public void setAiId(Integer aiId) {
		this.aiId = aiId;
	}

	public String getAiName() {
		return this.aiName;
	}

	public void setAiName(String aiName) {
		this.aiName = aiName;
	}

	public Date getAiBeginTime() {
		return this.aiBeginTime;
	}

	public void setAiBeginTime(Date aiBeginTime) {
		this.aiBeginTime = aiBeginTime;
	}

	public Date getAiEndTime() {
		return this.aiEndTime;
	}

	public void setAiEndTime(Date aiEndTime) {
		this.aiEndTime = aiEndTime;
	}

	public String getAiPhoto() {
		return this.aiPhoto;
	}

	public void setAiPhoto(String aiPhoto) {
		this.aiPhoto = aiPhoto;
	}

	public String getAiContent() {
		return this.aiContent;
	}

	public void setAiContent(String aiContent) {
		this.aiContent = aiContent;
	}

	public Integer getAiStatus() {
		return this.aiStatus;
	}

	public void setAiStatus(Integer aiStatus) {
		this.aiStatus = aiStatus;
	}

	public Integer getAiScore() {
		return this.aiScore;
	}

	public void setAiScore(Integer aiScore) {
		this.aiScore = aiScore;
	}

	public String getAiGiftName() {
		return this.aiGiftName;
	}

	public void setAiGiftName(String aiGiftName) {
		this.aiGiftName = aiGiftName;
	}

	public Integer getAiCount() {
		return this.aiCount;
	}

	public void setAiCount(Integer aiCount) {
		this.aiCount = aiCount;
	}

	@Override
	public String toString() {
		return "Activeinfo [aiBeginTime=" + aiBeginTime + ", aiContent="
				+ aiContent + ", aiCount=" + aiCount + ", aiEndTime="
				+ aiEndTime + ", aiGiftName=" + aiGiftName + ",  aiName="
				+ aiName + ", aiPhoto=" + aiPhoto + ", aiScore=" + aiScore
				+ ", aiStatus=" + aiStatus + "]";
	}

}