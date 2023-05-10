package com.junefw.infra.code;

import java.io.Serializable;

import com.junefw.common.base.BaseVo;

public class CodeVo extends BaseVo implements Serializable{

	private static final long serialVersionUID = -6213647508331313337L;
	
	private String ifcdSeq;
//	----------
	public String getIfcdSeq() {
		return ifcdSeq;
	}

	public void setIfcdSeq(String ifcdSeq) {
		this.ifcdSeq = ifcdSeq;
	}
	
}
