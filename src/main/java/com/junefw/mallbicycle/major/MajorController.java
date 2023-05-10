package com.junefw.mallbicycle.major;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.junefw.common.base.BaseController;
import com.junefw.common.util.UtilDateTime;

@Controller
@RequestMapping(value = "/v1/mallbicycle/major")
public class MajorController extends BaseController{

	String pathXdmCommon = "xdm/v1/mallbicycle/major/";
	String pathUsrCommon = "usr/v1/mallbicycle/major/";
	
	String pathRedirectCommon = "redirect:/v1/mallbicycle/major/";

	@Autowired
	MajorServiceImpl service;
	

	public void setSearch(MajorVo vo) throws Exception {
		
		vo.setShUseNy(vo.getShUseNy() == null ? 1 : vo.getShUseNy());
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
		vo.setShOptionDate(vo.getShOptionDate() == null ? null : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
	}
	
//	usr s ////////////////////
//
//	goods
	@RequestMapping(value = "/majorGoodsUsrAjaxList")
	public String majorGoodsUsrAjaxList(@ModelAttribute("vo") MajorVo vo, Model model) throws Exception {
		
		setSearch(vo);
		
		return pathUsrCommon + "majorGoodsUsrAjaxList";
	}
	
	
	@RequestMapping(value = "/majorGoodsUsrLita")
	public String majorGoodsUsrLita(@ModelAttribute("vo") MajorVo vo, Model model) throws Exception {
		
		vo.setParamsPaging(service.selectOneCountMajorGoods(vo));
		
		if (vo.getTotalRows() > 0) {
			List<Major> list = service.selectListMajorGoods(vo);
			model.addAttribute("list", list);
		}
		
		return pathUsrCommon + "majorGoodsUsrLita";
	}
	
	
	@RequestMapping(value = "/majorGoodsUsrView")
	public String majorGoodsUsrView(@ModelAttribute("vo") MajorVo vo, Model model) throws Exception {
		
		Major item = service.selectOneMajorGoods(vo);
		model.addAttribute("item", item);
		
		return pathUsrCommon + "majorGoodsUsrView";
	}
	
	
	@RequestMapping(value = "/majorGoodsUsrForm")
	public String majorGoodsUsrForm() throws Exception {
		
		return pathUsrCommon + "majorGoodsUsrForm";
	}
	
	
//	trade
	@RequestMapping(value = "/majorTradeUsrAjaxList")
	public String majorTradeUsrAjaxList(@ModelAttribute("vo") MajorVo vo, Model model) throws Exception {
		
		setSearch(vo);
		
		return pathUsrCommon + "majorTradeUsrAjaxList";
	}
	
	
	@RequestMapping(value = "/majorTradeUsrLita")
	public String majorTradeUsrLita(@ModelAttribute("vo") MajorVo vo, Model model) throws Exception {
		
		vo.setParamsPaging(service.selectOneCountMajorTrade(vo));
		
		if (vo.getTotalRows() > 0) {
			List<Major> list = service.selectListMajorTrade(vo);
			model.addAttribute("list", list);
		}
		
		return pathUsrCommon + "majorTradeUsrLita";
	}
	
	
	@RequestMapping(value = "/majorTradeUsrView")
	public String majorTradeUsrView(@ModelAttribute("vo") MajorVo vo, Model model) throws Exception {
		
		Major item = service.selectOneMajorTrade(vo);
		model.addAttribute("item", item);
		
		return pathUsrCommon + "majorTradeUsrView";
	}
	
	
	@RequestMapping(value = "/majorTradeUsrForm")
	public String majorTradeUsrForm() throws Exception {
		
		return pathUsrCommon + "majorTradeUsrForm";
	}


//	favorite
	@RequestMapping(value = "/majorFavoriteUsrAjaxList")
	public String majorFavoriteUsrAjaxList(@ModelAttribute("vo") MajorVo vo, Model model) throws Exception {
		
		setSearch(vo);
		
		return pathUsrCommon + "majorFavoriteUsrAjaxList";
	}
	
	
	@RequestMapping(value = "/majorFavoriteUsrLita")
	public String majorFavoriteUsrLita(@ModelAttribute("vo") MajorVo vo, Model model) throws Exception {
		
		vo.setParamsPaging(service.selectOneCountMajorGoods(vo));
		
		if (vo.getTotalRows() > 0) {
			List<Major> list = service.selectListMajorFavorite(vo);
			model.addAttribute("list", list);
		}
		
		return pathUsrCommon + "majorFavoriteUsrLita";
	}
	
	
	@RequestMapping(value = "/majorFavoriteUsrView")
	public String majorFavoriteUsrView(@ModelAttribute("vo") MajorVo vo, Model model) throws Exception {
		
		Major item = service.selectOneMajorFavorite(vo);
		model.addAttribute("item", item);
		
		return pathUsrCommon + "majorFavoriteUsrView";
	}
	
	
	@RequestMapping(value = "/majorFavoriteUsrForm")
	public String majorFavoriteUsrForm() throws Exception {
		
		return pathUsrCommon + "majorFavoriteUsrForm";
	}
	
	
//	show
	@RequestMapping(value = "/majorShowUsrAjaxList")
	public String majorShowUsrAjaxList(@ModelAttribute("vo") MajorVo vo, Model model) throws Exception {
		
		setSearch(vo);
		
		return pathUsrCommon + "majorShowUsrAjaxList";
	}
	
	
	@RequestMapping(value = "/majorShowUsrLita")
	public String majorShowUsrLita(@ModelAttribute("vo") MajorVo vo, Model model) throws Exception {
		
		setSearch(vo);
		vo.setParamsPaging(service.selectOneCountMajorShow(vo));
		
		if (vo.getTotalRows() > 0) {
			List<Major> list = service.selectListMajorShow(vo);
			model.addAttribute("list", list);
		}
		
		return pathUsrCommon + "majorShowUsrLita";
	}
	
	
	@RequestMapping(value = "/majorShowUsrView")
	public String majorShowUsrView(@ModelAttribute("vo") MajorVo vo, Major dto, HttpSession httpSession, Model model) throws Exception {
		
		dto.setMbmtSeq(vo.getMbmtSeq());
		dto.setIfmmSeq((String) httpSession.getAttribute("sessUsrSeq"));
		service.insertMajorHit(dto);
		
		Major item = service.selectOneMajorShow(vo);
		model.addAttribute("item", item);
		
		return pathUsrCommon + "majorShowUsrView";
	}	
	
	
	@RequestMapping(value = "/majorShow2UsrAjaxList")
	public String majorShow2UsrAjaxList(@ModelAttribute("vo") MajorVo vo, Model model) throws Exception {
		
		setSearch(vo);
		
		return pathUsrCommon + "majorShow2UsrAjaxList";
	}
	
	
	@RequestMapping(value = "/majorShow2UsrLita")
	public String majorShow2UsrLita(@ModelAttribute("vo") MajorVo vo, Model model) throws Exception {
		
		setSearch(vo);
		vo.setParamsPaging(service.selectOneCountMajorShow(vo));
		
		if (vo.getTotalRows() > 0) {
			List<Major> list = service.selectListMajorShow(vo);
			model.addAttribute("list", list);
		}
		
		return pathUsrCommon + "majorShow2UsrLita";
	}
	
//	
//	usr e ////////////////////
	
	
//	xdm s ////////////////////
}
