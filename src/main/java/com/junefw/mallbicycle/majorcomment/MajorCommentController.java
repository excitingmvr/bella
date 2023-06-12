package com.junefw.mallbicycle.majorcomment;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	@RequestMapping(value = "/majorCommentUsrLita")
	public String majorCommentUsrLita(@ModelAttribute("vo") MajorCommentVo vo, HttpSession httpSession, Model model) throws Exception {
		
		setSearch(vo);
		vo.setParamsPaging(service.selectOneCountMajorComment(vo));
		
		if (vo.getTotalRows() > 0) {
			List<MajorComment> list = service.selectListMajorComment(vo);
			model.addAttribute("list", list);
		}
		
		return "usr/v1/mallbicycle/major/majorCommentUsrLita";
	}
	
	@ResponseBody
	@RequestMapping(value = "majorCommentUsrUele")
	public Map<String, Object> majorCommentUsrUele(MajorComment dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.ueleteMajorComment(dto);

		if (result > 0) {
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	
	@ResponseBody
	@RequestMapping(value = "majorCommentUsrInst")
	public Map<String, Object> majorCommentUsrInst(MajorComment dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println("asdasdf");
		
		int result = service.insertMajorComment(dto);

		if (result > 0) {
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
//	
//	usr e ////////////////////
	
	
//	xdm s ////////////////////
}
