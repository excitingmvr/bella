package com.junefw.infra.member;

import java.io.Serializable;

import com.junefw.common.base.BaseVo;

public class MemberVo extends BaseVo implements Serializable{

	private static final long serialVersionUID = 717598492426181310L;

	private String ifmmSeq;
	
//	search item extra (optional)
	private Integer shAdminNy;
//	----------

	public String getIfmmSeq() {
		return ifmmSeq;
	}

	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}

	public Integer getShAdminNy() {
		return shAdminNy;
	}

	public void setShAdminNy(Integer shAdminNy) {
		this.shAdminNy = shAdminNy;
	}


	
}
