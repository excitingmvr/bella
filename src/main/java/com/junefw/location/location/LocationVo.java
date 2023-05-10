package com.junefw.location.location;

import java.io.Serializable;

import com.junefw.common.base.BaseVo;

public class LocationVo extends BaseVo implements Serializable{

	private static final long serialVersionUID = 7402180299784279542L;
	               
	private String ltltSeq = "";
	
	private Double xltltLatStart;
	private Double xltltLatEnd;
	private Double xltltLngStart;
	private Double xltltLngEnd;
//	----------
	public String getLtltSeq() {
		return ltltSeq;
	}
	
	public void setLtltSeq(String ltltSeq) {
		this.ltltSeq = ltltSeq;
	}

	public Double getXltltLatStart() {
		return xltltLatStart;
	}

	public void setXltltLatStart(Double xltltLatStart) {
		this.xltltLatStart = xltltLatStart;
	}

	public Double getXltltLatEnd() {
		return xltltLatEnd;
	}

	public void setXltltLatEnd(Double xltltLatEnd) {
		this.xltltLatEnd = xltltLatEnd;
	}

	public Double getXltltLngStart() {
		return xltltLngStart;
	}

	public void setXltltLngStart(Double xltltLngStart) {
		this.xltltLngStart = xltltLngStart;
	}

	public Double getXltltLngEnd() {
		return xltltLngEnd;
	}

	public void setXltltLngEnd(Double xltltLngEnd) {
		this.xltltLngEnd = xltltLngEnd;
	}
	
}
