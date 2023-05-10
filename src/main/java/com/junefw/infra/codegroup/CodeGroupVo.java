package com.junefw.infra.codegroup;

import java.io.Serializable;

import com.junefw.common.base.BaseVo;

public class CodeGroupVo extends BaseVo implements Serializable{

	private static final long serialVersionUID = -650521427351122051L;
	
	private String ifcgSeq;
//	----------

	public String getIfcgSeq() {
		return ifcgSeq;
	}

	public void setIfcgSeq(String ifcgSeq) {
		this.ifcgSeq = ifcgSeq;
	}
	
	
}
