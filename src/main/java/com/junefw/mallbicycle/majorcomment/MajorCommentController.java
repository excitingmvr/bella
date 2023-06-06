package com.junefw.mallbicycle.majorcomment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.junefw.common.base.BaseController;
import com.junefw.common.util.UtilDateTime;

@Controller
@RequestMapping(value = "/v1/mallbicycle/majorcomment")
public class MajorCommentController extends BaseController{

	String pathXdmCommon = "xdm/v1/mallbicycle/majorcomment/";
	String pathUsrCommon = "usr/v1/mallbicycle/majorcomment/";
	
	String pathRedirectCommon = "redirect:/v1/mallbicycle/majorcomment/";

	@Autowired
	MajorCommentServiceImpl service;
	

	public void setSearch(MajorCommentVo vo) throws Exception {
		
		vo.setShUseNy(vo.getShUseNy() == null ? 1 : vo.getShUseNy());
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
		vo.setShOptionDate(vo.getShOptionDate() == null ? null : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
	}
	
//	usr s ////////////////////
//
	
	
//	
//	usr e ////////////////////
	
	
//	xdm s ////////////////////
}
