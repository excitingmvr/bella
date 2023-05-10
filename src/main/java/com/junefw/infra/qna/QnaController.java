package com.junefw.infra.qna;

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
@RequestMapping(value = "/v1/infra/qna/")
public class QnaController extends BaseController {

	String pathRedirectCommon = "redirect:/v1/infra/qna/";
	
	String pathXdmCommon = "xdm/v1/infra/qna/";
	String pathUsrCommon = "usr/v1/infra/qna/";
	

	@Autowired
	QnaServiceImpl service;

	
	public void setSearch(QnaVo vo) throws Exception {
		
		vo.setShUseNy(vo.getShUseNy() == null ? 1 : vo.getShUseNy());
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
		vo.setShOptionDate(vo.getShOptionDate() == null ? null : vo.getShOptionDate());
		
		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
	}
	
	
	@RequestMapping(value = "qnaUsrAjaxList")
	public String qnaUsrAjaxList(@ModelAttribute("vo") QnaVo vo, Model model) throws Exception {
		
		setSearch(vo);

		return pathUsrCommon + "qnaUsrAjaxList";
	}
	
	
	@RequestMapping(value = "qnaUsrLita")
	public String qnaUsrLita(@ModelAttribute("vo") QnaVo vo, Model model) throws Exception {
		
		setSearch(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Qna> list = service.selectList(vo);
			model.addAttribute("list", list);
		}

		return pathUsrCommon + "qnaUsrLita";
	}
	

	@RequestMapping(value = "qnaUsrView")
	public String qnaUsrView(@ModelAttribute("vo") QnaVo vo, Model model) throws Exception {
		
		System.out.println("vo.getIfqaSeq(): " + vo.getIfqaSeq());
			
		Qna item = service.selectOne(vo);
		model.addAttribute("item", item);

		return pathUsrCommon + "qnaUsrView";
	}

	
	@RequestMapping(value = "qnaXdmList")
	public String qnaXdmList(@ModelAttribute("vo") QnaVo vo, Model model) throws Exception {

		setSearch(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Qna> list = service.selectList(vo);
			model.addAttribute("list", list);
		}
		
		return pathXdmCommon + "qnaXdmList";
	}
	
	
	@RequestMapping(value = "qnaXdmAjaxList")
	public String qnaXdmAjaxList(@ModelAttribute("vo") QnaVo vo, Model model) throws Exception {
		
		setSearch(vo);

		return pathXdmCommon + "qnaXdmAjaxList";
	}
	
	
	@RequestMapping(value = "qnaXdmLita")
	public String qnaXdmLita(@ModelAttribute("vo") QnaVo vo, Model model) throws Exception {
		
		setSearch(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Qna> list = service.selectList(vo);
			model.addAttribute("list", list);
		}

		return pathXdmCommon + "qnaXdmLita";
	}

	
	@RequestMapping(value = "qnaXdmForm")
	public String qnaXdmForm(@ModelAttribute("vo") QnaVo vo, Model model) throws Exception {

		if (vo.getIfqaSeq().equals("0") || vo.getIfqaSeq().equals("")) {
			//	insert
		} else {
			Qna item = service.selectOne(vo);
			model.addAttribute("item", item);
		}

		return pathXdmCommon + "qnaXdmForm";
	}

	
	@SuppressWarnings(value = { "all" })
	@RequestMapping(value = "qnaXdmInst")
	public String qnaXdmInst(QnaVo vo, Qna dto, RedirectAttributes redirectAttributes) throws Exception {

		service.insert(dto);
	
		vo.setIfqaSeq(dto.getIfqaSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);

		if (Constants.INSERT_AFTER_TYPE == 1) {
			return pathRedirectCommon + "qnaXdmForm";
		} else {
			return pathRedirectCommon + "qnaXdmAjaxList";
		}
	}
	
	
	@SuppressWarnings(value = { "all" })
	@RequestMapping(value = "qnaXdmUpdt")
	public String qnaXdmUpdt(QnaVo vo, Qna dto, RedirectAttributes redirectAttributes) throws Exception {

		service.update(dto);

		redirectAttributes.addFlashAttribute("vo", vo);

		if (Constants.UPDATE_AFTER_TYPE == 1) {
			return pathRedirectCommon + "qnaXdmForm";
		} else {
			return pathRedirectCommon + "qnaXdmAjaxList";
		}
	}

	
	@RequestMapping(value = "qnaXdmUele")
	public String qnaXdmUele(QnaVo vo, Qna dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.uelete(dto);

		redirectAttributes.addFlashAttribute("vo", vo);

		return pathRedirectCommon + "qnaXdmAjaxList";
	}

	
	@RequestMapping(value = "qnaXdmDele")
	public String qnaXdmDele(QnaVo vo, RedirectAttributes redirectAttributes) throws Exception {

		service.delete(vo);

		redirectAttributes.addFlashAttribute("vo", vo);

		return pathRedirectCommon + "qnaXdmAjaxList";
	}

	
	@RequestMapping(value = "qnaXdmMultiUele")
	public String qnaXdmMultiUele(QnaVo vo, Qna dto, RedirectAttributes redirectAttributes) throws Exception {

		for (String checkboxSeq : vo.getCheckboxSeqArray()) {
			dto.setIfqaSeq(checkboxSeq);
			service.uelete(dto);
		}

		redirectAttributes.addFlashAttribute("vo", vo);

		return pathRedirectCommon + "qnaXdmAjaxList";
	}

	
	@RequestMapping(value = "qnaXdmMultiDele")
	public String qnaXdmMultiDele(QnaVo vo, RedirectAttributes redirectAttributes) throws Exception {

		for (String checkboxSeq : vo.getCheckboxSeqArray()) {
			vo.setIfqaSeq(checkboxSeq);
			service.delete(vo);
		}

		redirectAttributes.addFlashAttribute("vo", vo);

		return pathRedirectCommon + "qnaXdmAjaxList";
	}
	
	
	@RequestMapping("excelDownload")
    public void excelDownload(QnaVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
//		setSearch(vo);
//		vo.setParamsPaging(service.selectOneCount(vo));
//
//		if (vo.getTotalRows() > 0) {
//			List<Qna> list = service.selectList(vo);
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
//	            cell.setCellValue(Integer.parseInt(list.get(i).getIfqaSeq()));
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