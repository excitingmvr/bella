package com.junefw.infra.code;

import java.util.ArrayList;
import java.util.List;

import com.junefw.common.base.Base;

public class Code extends Base {
	
//	infr_code
	private String ifcdSeq;
	private String ifcdSeqAnother;
	private String ifcdName;
	private String ifcdNameEng;
	private String ifcdNameLang1;
	private String ifcdNameLang2;
	private String ifcdNameLang3;
	private String ifcdNameLang4;
	private String ifcdNameLang5;
	private String ifcdNameLang6;
	private Integer ifcdUseNy;
	private Integer ifcdOrder;
	private String ifcdReferenceV1;
	private String ifcdReferenceV2;
	private String ifcdReferenceV3;
	private String ifcdReferenceV4;
	private Integer ifcdReferenceI1;
	private Integer ifcdReferenceI2;
	private Integer ifcdReferenceI3;
	private Integer ifcdReferenceI4;
	private String ifcdDesc;
	private Integer ifcdDelNy;
	private String ifcgSeq;
	
	private String ifcgName;
//	----------
	
//	for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();


	public String getIfcdSeq() {
		return ifcdSeq;
	}


	public void setIfcdSeq(String ifcdSeq) {
		this.ifcdSeq = ifcdSeq;
	}


	public String getIfcdSeqAnother() {
		return ifcdSeqAnother;
	}


	public void setIfcdSeqAnother(String ifcdSeqAnother) {
		this.ifcdSeqAnother = ifcdSeqAnother;
	}


	public String getIfcdName() {
		return ifcdName;
	}


	public void setIfcdName(String ifcdName) {
		this.ifcdName = ifcdName;
	}


	public String getIfcdNameEng() {
		return ifcdNameEng;
	}


	public void setIfcdNameEng(String ifcdNameEng) {
		this.ifcdNameEng = ifcdNameEng;
	}


	public String getIfcdNameLang1() {
		return ifcdNameLang1;
	}


	public void setIfcdNameLang1(String ifcdNameLang1) {
		this.ifcdNameLang1 = ifcdNameLang1;
	}


	public String getIfcdNameLang2() {
		return ifcdNameLang2;
	}


	public void setIfcdNameLang2(String ifcdNameLang2) {
		this.ifcdNameLang2 = ifcdNameLang2;
	}


	public String getIfcdNameLang3() {
		return ifcdNameLang3;
	}


	public void setIfcdNameLang3(String ifcdNameLang3) {
		this.ifcdNameLang3 = ifcdNameLang3;
	}


	public String getIfcdNameLang4() {
		return ifcdNameLang4;
	}


	public void setIfcdNameLang4(String ifcdNameLang4) {
		this.ifcdNameLang4 = ifcdNameLang4;
	}


	public String getIfcdNameLang5() {
		return ifcdNameLang5;
	}


	public void setIfcdNameLang5(String ifcdNameLang5) {
		this.ifcdNameLang5 = ifcdNameLang5;
	}


	public String getIfcdNameLang6() {
		return ifcdNameLang6;
	}


	public void setIfcdNameLang6(String ifcdNameLang6) {
		this.ifcdNameLang6 = ifcdNameLang6;
	}


	public Integer getIfcdUseNy() {
		return ifcdUseNy;
	}


	public void setIfcdUseNy(Integer ifcdUseNy) {
		this.ifcdUseNy = ifcdUseNy;
	}


	public Integer getIfcdOrder() {
		return ifcdOrder;
	}


	public void setIfcdOrder(Integer ifcdOrder) {
		this.ifcdOrder = ifcdOrder;
	}


	public String getIfcdReferenceV1() {
		return ifcdReferenceV1;
	}


	public void setIfcdReferenceV1(String ifcdReferenceV1) {
		this.ifcdReferenceV1 = ifcdReferenceV1;
	}


	public String getIfcdReferenceV2() {
		return ifcdReferenceV2;
	}


	public void setIfcdReferenceV2(String ifcdReferenceV2) {
		this.ifcdReferenceV2 = ifcdReferenceV2;
	}


	public String getIfcdReferenceV3() {
		return ifcdReferenceV3;
	}


	public void setIfcdReferenceV3(String ifcdReferenceV3) {
		this.ifcdReferenceV3 = ifcdReferenceV3;
	}


	public String getIfcdReferenceV4() {
		return ifcdReferenceV4;
	}


	public void setIfcdReferenceV4(String ifcdReferenceV4) {
		this.ifcdReferenceV4 = ifcdReferenceV4;
	}


	public Integer getIfcdReferenceI1() {
		return ifcdReferenceI1;
	}


	public void setIfcdReferenceI1(Integer ifcdReferenceI1) {
		this.ifcdReferenceI1 = ifcdReferenceI1;
	}


	public Integer getIfcdReferenceI2() {
		return ifcdReferenceI2;
	}


	public void setIfcdReferenceI2(Integer ifcdReferenceI2) {
		this.ifcdReferenceI2 = ifcdReferenceI2;
	}


	public Integer getIfcdReferenceI3() {
		return ifcdReferenceI3;
	}


	public void setIfcdReferenceI3(Integer ifcdReferenceI3) {
		this.ifcdReferenceI3 = ifcdReferenceI3;
	}


	public Integer getIfcdReferenceI4() {
		return ifcdReferenceI4;
	}


	public void setIfcdReferenceI4(Integer ifcdReferenceI4) {
		this.ifcdReferenceI4 = ifcdReferenceI4;
	}


	public String getIfcdDesc() {
		return ifcdDesc;
	}


	public void setIfcdDesc(String ifcdDesc) {
		this.ifcdDesc = ifcdDesc;
	}


	public Integer getIfcdDelNy() {
		return ifcdDelNy;
	}


	public void setIfcdDelNy(Integer ifcdDelNy) {
		this.ifcdDelNy = ifcdDelNy;
	}


	public String getIfcgSeq() {
		return ifcgSeq;
	}


	public void setIfcgSeq(String ifcgSeq) {
		this.ifcgSeq = ifcgSeq;
	}


	public String getIfcgName() {
		return ifcgName;
	}


	public void setIfcgName(String ifcgName) {
		this.ifcgName = ifcgName;
	}


	public static List<Code> getCachedCodeArrayList() {
		return cachedCodeArrayList;
	}


	public static void setCachedCodeArrayList(List<Code> cachedCodeArrayList) {
		Code.cachedCodeArrayList = cachedCodeArrayList;
	}
	
}