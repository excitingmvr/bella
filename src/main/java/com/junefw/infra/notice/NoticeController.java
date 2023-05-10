package com.junefw.infra.notice;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.junefw.common.base.BaseController;
import com.junefw.common.constants.Constants;
import com.junefw.common.util.UtilDateTime;

@Controller
@RequestMapping(value = "/v1/infra/notice/")
public class NoticeController extends BaseController {

	String pathRedirectCommon = "redirect:/v1/infra/notice/";
	
	String pathXdmCommon = "xdm/v1/infra/notice/";
	String pathUsrCommon = "usr/v1/infra/notice/";
	

	@Autowired
	NoticeServiceImpl service;

	
	public void setSearch(NoticeVo vo) throws Exception {
		
		vo.setShUseNy(vo.getShUseNy() == null ? 1 : vo.getShUseNy());
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
		vo.setShOptionDate(vo.getShOptionDate() == null ? null : vo.getShOptionDate());
		
		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
	}
	
	
	@RequestMapping(value = "noticeUsrAjaxList")
	public String noticeUsrAjaxList(@ModelAttribute("vo") NoticeVo vo, Model model) throws Exception {
		
		setSearch(vo);

		return pathUsrCommon + "noticeUsrAjaxList";
	}
	
	
	@RequestMapping(value = "noticeUsrLita")
	public String noticeUsrLita(@ModelAttribute("vo") NoticeVo vo, Model model) throws Exception {
		
		setSearch(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Notice> list = service.selectList(vo);
			model.addAttribute("list", list);
		}

		return pathUsrCommon + "noticeUsrLita";
	}
	

	@RequestMapping(value = "noticeUsrView")
	public String noticeUsrView(@ModelAttribute("vo") NoticeVo vo, Model model) throws Exception {
		
		System.out.println("vo.getIfntSeq(): " + vo.getIfntSeq());
			
		Notice item = service.selectOne(vo);
		model.addAttribute("item", item);

		return pathUsrCommon + "noticeUsrView";
	}

	
	@RequestMapping(value = "noticeXdmList")
	public String noticeXdmList(@ModelAttribute("vo") NoticeVo vo, Model model) throws Exception {

		setSearch(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Notice> list = service.selectList(vo);
			model.addAttribute("list", list);
		}
		
		return pathXdmCommon + "noticeXdmList";
	}
	
	
	@RequestMapping(value = "noticeXdmAjaxList")
	public String noticeXdmAjaxList(@ModelAttribute("vo") NoticeVo vo, Model model) throws Exception {
		
		setSearch(vo);

		return pathXdmCommon + "noticeXdmAjaxList";
	}
	
	
	@RequestMapping(value = "noticeXdmLita")
	public String noticeXdmLita(@ModelAttribute("vo") NoticeVo vo, Model model) throws Exception {
		
		setSearch(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Notice> list = service.selectList(vo);
			model.addAttribute("list", list);
		}

		return pathXdmCommon + "noticeXdmLita";
	}

	
	@RequestMapping(value = "noticeXdmForm")
	public String noticeXdmForm(@ModelAttribute("vo") NoticeVo vo, Model model) throws Exception {

		if (vo.getIfntSeq().equals("0") || vo.getIfntSeq().equals("")) {
			//	insert
		} else {
			Notice item = service.selectOne(vo);
			model.addAttribute("item", item);
		}

		return pathXdmCommon + "noticeXdmForm";
	}

	
	@SuppressWarnings(value = { "all" })
	@RequestMapping(value = "noticeXdmInst")
	public String noticeXdmInst(NoticeVo vo, Notice dto, RedirectAttributes redirectAttributes) throws Exception {

		service.insert(dto);
	
		vo.setIfntSeq(dto.getIfntSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);

		if (Constants.INSERT_AFTER_TYPE == 1) {
			return pathRedirectCommon + "noticeXdmForm";
		} else {
			return pathRedirectCommon + "noticeXdmAjaxList";
		}
	}
	
	
	@SuppressWarnings(value = { "all" })
	@RequestMapping(value = "noticeXdmUpdt")
	public String noticeXdmUpdt(NoticeVo vo, Notice dto, RedirectAttributes redirectAttributes) throws Exception {

		service.update(dto);

		redirectAttributes.addFlashAttribute("vo", vo);

		if (Constants.UPDATE_AFTER_TYPE == 1) {
			return pathRedirectCommon + "noticeXdmForm";
		} else {
			return pathRedirectCommon + "noticeXdmAjaxList";
		}
	}

	
	@RequestMapping(value = "noticeXdmUele")
	public String noticeXdmUele(NoticeVo vo, Notice dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.uelete(dto);

		redirectAttributes.addFlashAttribute("vo", vo);

		return pathRedirectCommon + "noticeXdmAjaxList";
	}

	
	@RequestMapping(value = "noticeXdmDele")
	public String noticeXdmDele(NoticeVo vo, RedirectAttributes redirectAttributes) throws Exception {

		service.delete(vo);

		redirectAttributes.addFlashAttribute("vo", vo);

		return pathRedirectCommon + "noticeXdmAjaxList";
	}

	
	@RequestMapping(value = "noticeXdmMultiUele")
	public String noticeXdmMultiUele(NoticeVo vo, Notice dto, RedirectAttributes redirectAttributes) throws Exception {

		for (String checkboxSeq : vo.getCheckboxSeqArray()) {
			dto.setIfntSeq(checkboxSeq);
			service.uelete(dto);
		}

		redirectAttributes.addFlashAttribute("vo", vo);

		return pathRedirectCommon + "noticeXdmAjaxList";
	}

	
	@RequestMapping(value = "noticeXdmMultiDele")
	public String noticeXdmMultiDele(NoticeVo vo, RedirectAttributes redirectAttributes) throws Exception {

		for (String checkboxSeq : vo.getCheckboxSeqArray()) {
			vo.setIfntSeq(checkboxSeq);
			service.delete(vo);
		}

		redirectAttributes.addFlashAttribute("vo", vo);

		return pathRedirectCommon + "noticeXdmAjaxList";
	}
	
	
	@RequestMapping("excelDownload")
    public void excelDownload(NoticeVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
//		setSearch(vo);
//		vo.setParamsPaging(service.selectOneCount(vo));
//
//		if (vo.getTotalRows() > 0) {
//			List<Notice> list = service.selectList(vo);
//			
////			Workbook workbook = new HSSFWorkbook();	// for xls
//	        Workbook workbook = new XSSFWorkbook();
//	        Sheet sheet = workbook.createSheet("Sheet1");
//	        CellStyle cellStyle = workbook.createCellStyle();        
//	        Row row = null;
//	        Cell cell = null;
//	        int rowNum = 0;
//			
////	        each column width setting	        
//	        sheet.setColumnWidth(0, 2100);
//	        sheet.setColumnWidth(1, 3100);
//
////	        Header
//	        String[] tableHeader = {"Seq", "국가 이름", "국가 이름 (영문)", "국가 코드 (2자리)", "국가 코드 (3자리)", "사용", "순서", "등록일", "수정일"};
//
//	        row = sheet.createRow(rowNum++);
//	        
//			for(int i=0; i<tableHeader.length; i++) {
//				cell = row.createCell(i);
//	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	        	cell.setCellStyle(cellStyle);
//				cell.setCellValue(tableHeader[i]);
//			}
//
////	        Body
//	        for (int i=0; i<list.size(); i++) {
//	            row = sheet.createRow(rowNum++);
//	            
////	            String type: null 전달 되어도 ok
////	            int, date type: null 시 오류 발생 하므로 null check
////	            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅	            
//	            
//	            cell = row.createCell(0);
//	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	        	cell.setCellStyle(cellStyle);
//	            cell.setCellValue(Integer.parseInt(list.get(i).getIfntSeq()));
//	            
//	            cell = row.createCell(1);
//	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	        	cell.setCellStyle(cellStyle);
//	        	cell.setCellValue(list.get(i).getIfnaName());
//	        	
//	            cell = row.createCell(2);
//	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	        	cell.setCellStyle(cellStyle);
//	        	cell.setCellValue(list.get(i).getIfnaNameEng());
//	        	
//	            cell = row.createCell(3);
//	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	        	cell.setCellStyle(cellStyle);
//	            cell.setCellValue(list.get(i).getIfnaCode2Char());
//	            
//	            cell = row.createCell(4);
//	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	            cell.setCellStyle(cellStyle);
//	            cell.setCellValue(list.get(i).getIfnaCode3Char());
//	            
//	            cell = row.createCell(5);
//	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	            cell.setCellStyle(cellStyle);
//	            if(list.get(i).getIfnaUseNy() != null) cell.setCellValue(list.get(i).getIfnaUseNy() == 0 ? "N" : "Y");
//	            
//	            cell = row.createCell(6);
//	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	            cell.setCellStyle(cellStyle);
//	            if(list.get(i).getIfnaOrder() != null) cell.setCellValue(list.get(i).getIfnaOrder());	            
//	            
//	            cell = row.createCell(7);
//	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	        	cell.setCellStyle(cellStyle);
//	        	if(list.get(i).getRegDateTime() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getRegDateTime()));
//	            
//	            cell = row.createCell(8);
//	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	            cell.setCellStyle(cellStyle);
//	            if(list.get(i).getModDateTime() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getModDateTime()));
//	        }
//
//	        httpServletResponse.setContentType("ms-vnd/excel");
////	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");
//
//	        workbook.write(httpServletResponse.getOutputStream());
//	        workbook.close();
//		}
    }

}