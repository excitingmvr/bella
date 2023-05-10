package com.junefw.infra.category;

import java.io.Serializable;

import com.junefw.common.base.BaseVo;

public class CategoryVo extends BaseVo implements Serializable{

	private static final long serialVersionUID = -8932229816416756253L;

	private String ifctSeq;
//	----------

	public String getIfctSeq() {
		return ifctSeq;
	}

	public void setIfctSeq(String ifctSeq) {
		this.ifctSeq = ifctSeq;
	}

	
}
