package com.junefw.infra.notice;

import java.io.Serializable;
import java.util.Date;

import com.junefw.common.base.Base;

public class Notice extends Base implements Serializable{

	private static final long serialVersionUID = -8681359183051671655L;
	
	private String ifntSeq;
	private String ifntTitle;
	private String ifntContents;
	private Integer ifntTopNy;
	private Integer ifntTopOrder;
	private Date ifntTopDateStart;
	private Date ifntTopDateEnd;
	private Integer ifntDisplayNy;
	private Integer ifntDelNy;
//	-----
	public String getIfntSeq() {
		return ifntSeq;
	}
	public void setIfntSeq(String ifntSeq) {
		this.ifntSeq = ifntSeq;
	}
	public String getIfntTitle() {
		return ifntTitle;
	}
	public void setIfntTitle(String ifntTitle) {
		this.ifntTitle = ifntTitle;
	}
	public String getIfntContents() {
		return ifntContents;
	}
	public void setIfntContents(String ifntContents) {
		this.ifntContents = ifntContents;
	}
	public Integer getIfntTopNy() {
		return ifntTopNy;
	}
	public void setIfntTopNy(Integer ifntTopNy) {
		this.ifntTopNy = ifntTopNy;
	}
	public Integer getIfntTopOrder() {
		return ifntTopOrder;
	}
	public void setIfntTopOrder(Integer ifntTopOrder) {
		this.ifntTopOrder = ifntTopOrder;
	}
	public Date getIfntTopDateStart() {
		return ifntTopDateStart;
	}
	public void setIfntTopDateStart(Date ifntTopDateStart) {
		this.ifntTopDateStart = ifntTopDateStart;
	}
	public Date getIfntTopDateEnd() {
		return ifntTopDateEnd;
	}
	public void setIfntTopDateEnd(Date ifntTopDateEnd) {
		this.ifntTopDateEnd = ifntTopDateEnd;
	}
	public Integer getIfntDisplayNy() {
		return ifntDisplayNy;
	}
	public void setIfntDisplayNy(Integer ifntDisplayNy) {
		this.ifntDisplayNy = ifntDisplayNy;
	}
	public Integer getIfntDelNy() {
		return ifntDelNy;
	}
	public void setIfntDelNy(Integer ifntDelNy) {
		this.ifntDelNy = ifntDelNy;
	}
	
}
