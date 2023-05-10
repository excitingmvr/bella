package com.junefw.infra.notice;

import java.io.Serializable;

import com.junefw.common.base.BaseVo;

public class NoticeVo extends BaseVo implements Serializable{

	private static final long serialVersionUID = 8721713845521324569L;

	private String ifntSeq;
//	-----

	public String getIfntSeq() {
		return ifntSeq;
	}

	public void setIfntSeq(String ifntSeq) {
		this.ifntSeq = ifntSeq;
	}
	
}
