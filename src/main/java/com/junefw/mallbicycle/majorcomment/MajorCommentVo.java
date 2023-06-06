package com.junefw.mallbicycle.majorcomment;

import java.io.Serializable;

import com.junefw.common.base.BaseVo;

public class MajorCommentVo extends BaseVo implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String mbctSeq;
	private String mbmtSeq;
//-----
	public String getMbctSeq() {
		return mbctSeq;
	}
	public void setMbctSeq(String mbctSeq) {
		this.mbctSeq = mbctSeq;
	}
	public String getMbmtSeq() {
		return mbmtSeq;
	}
	public void setMbmtSeq(String mbmtSeq) {
		this.mbmtSeq = mbmtSeq;
	}

}
