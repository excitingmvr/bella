package com.junefw.mallbicycle.major;

import java.io.Serializable;

import com.junefw.common.base.Base;

public class Major extends Base implements Serializable{

	private static final long serialVersionUID = 869058818482999201L;
	
	private String mbmgSeq;
	private Integer mbmgTypeCd;
	private Integer mbmgTypeDetailCd;
	private String mbmgTitle;
	private Integer mbmgBrandCt;
	private Integer mbmgModelCt;
	private Integer mbmgProductionYear;
	private Integer mbmgSizeCd;
	private String mbmgMaterialCd;
	private Integer mbmgDriveTrainCd;
	private Integer mbmgBreakCd;
	private Integer mbmgWheelCd;
	private Integer mbmgTireCd;
	private String mbmgDriveSystemCd;
	private String mbmgDesc;
	private Integer mbmgDelNy;
	private String ifmmSeq;
	
	private String mbmtSeq;
	private String mbmtTitle;
	private Double mbmtPrice;
	private Integer mbmtSalesNy;
	private String mbmtDesc;
	private Integer mbmtDelNy;
//	private String mbmgSeq;
	
	private String mbmfSeq;
	private Integer mbmfDelNy;
//	private String mbmtSeq;
//	private String ifmmSeq;
	private Integer xMajorFavoriteCount;
	
	private String mbtdSeq;
	private Integer mbtdDefaultNy;
	private Integer mbtdDistrictCt;
	private Integer mbtdDistrict2Ct;
	private Integer mbtdDistrict3Ct;
	private Integer mbtdDistrict4Ct;
	private String mbtdDistrictDetail;
	private Integer mbtdDelNy;
//	private String mbmtSeq;
	
	private String mbmhSeq;
	private Integer mbmhDefaultNy;
//	private String mbmtSeq;
//	private String ifmmSeq;	
	private Integer xMajorHitCount;
//	-----
	public String getMbmgSeq() {
		return mbmgSeq;
	}
	public void setMbmgSeq(String mbmgSeq) {
		this.mbmgSeq = mbmgSeq;
	}
	public Integer getMbmgTypeCd() {
		return mbmgTypeCd;
	}
	public void setMbmgTypeCd(Integer mbmgTypeCd) {
		this.mbmgTypeCd = mbmgTypeCd;
	}
	public Integer getMbmgTypeDetailCd() {
		return mbmgTypeDetailCd;
	}
	public void setMbmgTypeDetailCd(Integer mbmgTypeDetailCd) {
		this.mbmgTypeDetailCd = mbmgTypeDetailCd;
	}
	public String getMbmgTitle() {
		return mbmgTitle;
	}
	public void setMbmgTitle(String mbmgTitle) {
		this.mbmgTitle = mbmgTitle;
	}
	public Integer getMbmgBrandCt() {
		return mbmgBrandCt;
	}
	public void setMbmgBrandCt(Integer mbmgBrandCt) {
		this.mbmgBrandCt = mbmgBrandCt;
	}
	public Integer getMbmgModelCt() {
		return mbmgModelCt;
	}
	public void setMbmgModelCt(Integer mbmgModelCt) {
		this.mbmgModelCt = mbmgModelCt;
	}
	public Integer getMbmgProductionYear() {
		return mbmgProductionYear;
	}
	public void setMbmgProductionYear(Integer mbmgProductionYear) {
		this.mbmgProductionYear = mbmgProductionYear;
	}
	public Integer getMbmgSizeCd() {
		return mbmgSizeCd;
	}
	public void setMbmgSizeCd(Integer mbmgSizeCd) {
		this.mbmgSizeCd = mbmgSizeCd;
	}
	public String getMbmgMaterialCd() {
		return mbmgMaterialCd;
	}
	public void setMbmgMaterialCd(String mbmgMaterialCd) {
		this.mbmgMaterialCd = mbmgMaterialCd;
	}
	public Integer getMbmgDriveTrainCd() {
		return mbmgDriveTrainCd;
	}
	public void setMbmgDriveTrainCd(Integer mbmgDriveTrainCd) {
		this.mbmgDriveTrainCd = mbmgDriveTrainCd;
	}
	public Integer getMbmgBreakCd() {
		return mbmgBreakCd;
	}
	public void setMbmgBreakCd(Integer mbmgBreakCd) {
		this.mbmgBreakCd = mbmgBreakCd;
	}
	public Integer getMbmgWheelCd() {
		return mbmgWheelCd;
	}
	public void setMbmgWheelCd(Integer mbmgWheelCd) {
		this.mbmgWheelCd = mbmgWheelCd;
	}
	public Integer getMbmgTireCd() {
		return mbmgTireCd;
	}
	public void setMbmgTireCd(Integer mbmgTireCd) {
		this.mbmgTireCd = mbmgTireCd;
	}
	public String getMbmgDriveSystemCd() {
		return mbmgDriveSystemCd;
	}
	public void setMbmgDriveSystemCd(String mbmgDriveSystemCd) {
		this.mbmgDriveSystemCd = mbmgDriveSystemCd;
	}
	public String getMbmgDesc() {
		return mbmgDesc;
	}
	public void setMbmgDesc(String mbmgDesc) {
		this.mbmgDesc = mbmgDesc;
	}
	public Integer getMbmgDelNy() {
		return mbmgDelNy;
	}
	public void setMbmgDelNy(Integer mbmgDelNy) {
		this.mbmgDelNy = mbmgDelNy;
	}
	public String getIfmmSeq() {
		return ifmmSeq;
	}
	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}
	public String getMbmtSeq() {
		return mbmtSeq;
	}
	public void setMbmtSeq(String mbmtSeq) {
		this.mbmtSeq = mbmtSeq;
	}
	public String getMbmtTitle() {
		return mbmtTitle;
	}
	public void setMbmtTitle(String mbmtTitle) {
		this.mbmtTitle = mbmtTitle;
	}
	public Double getMbmtPrice() {
		return mbmtPrice;
	}
	public void setMbmtPrice(Double mbmtPrice) {
		this.mbmtPrice = mbmtPrice;
	}
	public Integer getMbmtSalesNy() {
		return mbmtSalesNy;
	}
	public void setMbmtSalesNy(Integer mbmtSalesNy) {
		this.mbmtSalesNy = mbmtSalesNy;
	}
	public String getMbmtDesc() {
		return mbmtDesc;
	}
	public void setMbmtDesc(String mbmtDesc) {
		this.mbmtDesc = mbmtDesc;
	}
	public Integer getMbmtDelNy() {
		return mbmtDelNy;
	}
	public void setMbmtDelNy(Integer mbmtDelNy) {
		this.mbmtDelNy = mbmtDelNy;
	}
	public String getMbmfSeq() {
		return mbmfSeq;
	}
	public void setMbmfSeq(String mbmfSeq) {
		this.mbmfSeq = mbmfSeq;
	}
	public Integer getMbmfDelNy() {
		return mbmfDelNy;
	}
	public void setMbmfDelNy(Integer mbmfDelNy) {
		this.mbmfDelNy = mbmfDelNy;
	}
	public Integer getxMajorFavoriteCount() {
		return xMajorFavoriteCount;
	}
	public void setxMajorFavoriteCount(Integer xMajorFavoriteCount) {
		this.xMajorFavoriteCount = xMajorFavoriteCount;
	}
	public String getMbtdSeq() {
		return mbtdSeq;
	}
	public void setMbtdSeq(String mbtdSeq) {
		this.mbtdSeq = mbtdSeq;
	}
	public Integer getMbtdDefaultNy() {
		return mbtdDefaultNy;
	}
	public void setMbtdDefaultNy(Integer mbtdDefaultNy) {
		this.mbtdDefaultNy = mbtdDefaultNy;
	}
	public Integer getMbtdDistrictCt() {
		return mbtdDistrictCt;
	}
	public void setMbtdDistrictCt(Integer mbtdDistrictCt) {
		this.mbtdDistrictCt = mbtdDistrictCt;
	}
	public Integer getMbtdDistrict2Ct() {
		return mbtdDistrict2Ct;
	}
	public void setMbtdDistrict2Ct(Integer mbtdDistrict2Ct) {
		this.mbtdDistrict2Ct = mbtdDistrict2Ct;
	}
	public Integer getMbtdDistrict3Ct() {
		return mbtdDistrict3Ct;
	}
	public void setMbtdDistrict3Ct(Integer mbtdDistrict3Ct) {
		this.mbtdDistrict3Ct = mbtdDistrict3Ct;
	}
	public Integer getMbtdDistrict4Ct() {
		return mbtdDistrict4Ct;
	}
	public void setMbtdDistrict4Ct(Integer mbtdDistrict4Ct) {
		this.mbtdDistrict4Ct = mbtdDistrict4Ct;
	}
	public String getMbtdDistrictDetail() {
		return mbtdDistrictDetail;
	}
	public void setMbtdDistrictDetail(String mbtdDistrictDetail) {
		this.mbtdDistrictDetail = mbtdDistrictDetail;
	}
	public Integer getMbtdDelNy() {
		return mbtdDelNy;
	}
	public void setMbtdDelNy(Integer mbtdDelNy) {
		this.mbtdDelNy = mbtdDelNy;
	}
	public String getMbmhSeq() {
		return mbmhSeq;
	}
	public void setMbmhSeq(String mbmhSeq) {
		this.mbmhSeq = mbmhSeq;
	}
	public Integer getMbmhDefaultNy() {
		return mbmhDefaultNy;
	}
	public void setMbmhDefaultNy(Integer mbmhDefaultNy) {
		this.mbmhDefaultNy = mbmhDefaultNy;
	}
	public Integer getxMajorHitCount() {
		return xMajorHitCount;
	}
	public void setxMajorHitCount(Integer xMajorHitCount) {
		this.xMajorHitCount = xMajorHitCount;
	}
	
}
