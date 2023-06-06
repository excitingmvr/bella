package com.junefw.mallbicycle.majorcomment;

import java.io.Serializable;

import com.junefw.common.base.Base;

public class MajorComment extends Base implements Serializable{

	private static final long serialVersionUID = -1125461185463221930L;
	
	private String mbctSeq;
	private String mbctComment;
	private Integer mbctScore;
	private Integer mbctDelNy;
	private String mbmtSeq;
	private String ifmmSeq;
//	-----
	public String getMbctSeq() {
		return mbctSeq;
	}
	public void setMbctSeq(String mbctSeq) {
		this.mbctSeq = mbctSeq;
	}
	public String getMbctComment() {
		return mbctComment;
	}
	public void setMbctComment(String mbctComment) {
		this.mbctComment = mbctComment;
	}
	public Integer getMbctScore() {
		return mbctScore;
	}
	public void setMbctScore(Integer mbctScore) {
		this.mbctScore = mbctScore;
	}
	public Integer getMbctDelNy() {
		return mbctDelNy;
	}
	public void setMbctDelNy(Integer mbctDelNy) {
		this.mbctDelNy = mbctDelNy;
	}
	public String getMbmtSeq() {
		return mbmtSeq;
	}
	public void setMbmtSeq(String mbmtSeq) {
		this.mbmtSeq = mbmtSeq;
	}
	public String getIfmmSeq() {
		return ifmmSeq;
	}
	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}

}
