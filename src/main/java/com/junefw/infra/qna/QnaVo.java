package com.junefw.infra.qna;

import java.io.Serializable;

import com.junefw.common.base.BaseVo;

public class QnaVo extends BaseVo implements Serializable{

	private static final long serialVersionUID = -5049687958477479928L;
	
	private String ifqaSeq;
//	-----

	public String getIfqaSeq() {
		return ifqaSeq;
	}

	public void setIfqaSeq(String ifqaSeq) {
		this.ifqaSeq = ifqaSeq;
	}
	
}
