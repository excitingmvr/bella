package com.junefw.infra.qna;

import java.io.Serializable;
import java.util.Date;

import com.junefw.common.base.Base;

public class Qna extends Base implements Serializable{

	private static final long serialVersionUID = 5083511800608352152L;

	private String ifqaSeq;
	private Integer ifqaStatusCd;
	private Integer ifqaTypeCd;
	private String ifqaTitle;
	private String ifqaContents;
	private String ifqaAnswer;
	private String ifqaAnswerSeq;
	private Date ifqaAnswerDatetime;
	private Integer ifqaAnswerDisplayNy;
	private Integer ifqaDelNy;
//	-----
	public String getIfqaSeq() {
		return ifqaSeq;
	}
	public void setIfqaSeq(String ifqaSeq) {
		this.ifqaSeq = ifqaSeq;
	}
	public Integer getIfqaStatusCd() {
		return ifqaStatusCd;
	}
	public void setIfqaStatusCd(Integer ifqaStatusCd) {
		this.ifqaStatusCd = ifqaStatusCd;
	}
	public Integer getIfqaTypeCd() {
		return ifqaTypeCd;
	}
	public void setIfqaTypeCd(Integer ifqaTypeCd) {
		this.ifqaTypeCd = ifqaTypeCd;
	}
	public String getIfqaTitle() {
		return ifqaTitle;
	}
	public void setIfqaTitle(String ifqaTitle) {
		this.ifqaTitle = ifqaTitle;
	}
	public String getIfqaContents() {
		return ifqaContents;
	}
	public void setIfqaContents(String ifqaContents) {
		this.ifqaContents = ifqaContents;
	}
	public String getIfqaAnswer() {
		return ifqaAnswer;
	}
	public void setIfqaAnswer(String ifqaAnswer) {
		this.ifqaAnswer = ifqaAnswer;
	}
	public String getIfqaAnswerSeq() {
		return ifqaAnswerSeq;
	}
	public void setIfqaAnswerSeq(String ifqaAnswerSeq) {
		this.ifqaAnswerSeq = ifqaAnswerSeq;
	}
	public Date getIfqaAnswerDatetime() {
		return ifqaAnswerDatetime;
	}
	public void setIfqaAnswerDatetime(Date ifqaAnswerDatetime) {
		this.ifqaAnswerDatetime = ifqaAnswerDatetime;
	}
	public Integer getIfqaAnswerDisplayNy() {
		return ifqaAnswerDisplayNy;
	}
	public void setIfqaAnswerDisplayNy(Integer ifqaAnswerDisplayNy) {
		this.ifqaAnswerDisplayNy = ifqaAnswerDisplayNy;
	}
	public Integer getIfqaDelNy() {
		return ifqaDelNy;
	}
	public void setIfqaDelNy(Integer ifqaDelNy) {
		this.ifqaDelNy = ifqaDelNy;
	}
	
}
