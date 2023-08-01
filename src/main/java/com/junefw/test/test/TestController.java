package com.junefw.test.test;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.junefw.common.base.BaseController;
import com.junefw.common.constants.Constants;
import com.junefw.common.util.UtilDateTime;

@Controller
@RequestMapping(value = "/test/")
public class TestController extends BaseController {

	@Autowired
	TestServiceImpl service;

	
	public void setSearch(TestVo vo) throws Exception {
		
		vo.setShUseNy(vo.getShUseNy() == null ? 1 : vo.getShUseNy());
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
		vo.setShOptionDate(vo.getShOptionDate() == null ? null : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
	}
	
	
	@RequestMapping(value = "testList")
	public String testList(@ModelAttribute("vo") TestVo vo, Model model) throws Exception {

		setSearch(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Test> list = service.selectList(vo);
			model.addAttribute("list", list);
		}
		
		return "infra/test/xdmin/testList";
	}
	
	
	@RequestMapping(value = "testAjaxList")
	public String nationalityAjaxList(@ModelAttribute("vo") TestVo vo, Model model) throws Exception {
		
		setSearch(vo);

		return "infra/test/xdmin/testAjaxList";
	}
	
	
	@RequestMapping(value = "testAjaxLita")
	public String testAjaxLita(@ModelAttribute("vo") TestVo vo, Model model) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Test> list = service.selectList(vo);
			model.addAttribute("list", list);
		} 

		return "infra/test/xdmin/testAjaxLita";
	}

	
	@RequestMapping(value = "testForm")
	public String testForm(@ModelAttribute("vo") TestVo vo, Model model) throws Exception {

		if (vo.getIfnaSeq().equals("0") || vo.getIfnaSeq().equals("")) {
			//	insert
		} else {
			Test item = service.selectOne(vo);
			model.addAttribute("item", item);
		}

		return "infra/test/xdmin/testForm";
	}

	
	@SuppressWarnings(value = { "all" })
	@RequestMapping(value = "testInst")
	public String testInst(TestVo vo, Test dto, RedirectAttributes redirectAttributes) throws Exception {

		service.insert(dto);
	
		vo.setIfnaSeq(dto.getIfnaSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);

		if (Constants.INSERT_AFTER_TYPE == 1) {
			return "redirect:/test/testForm";
		} else {
			return "redirect:/test/testList";
		}
	}
	
	
	@SuppressWarnings(value = { "all" })
	@RequestMapping(value = "testUpdt")
	public String testUpdt(TestVo vo, Test dto, RedirectAttributes redirectAttributes) throws Exception {

		service.update(dto);

		redirectAttributes.addFlashAttribute("vo", vo);

		if (Constants.UPDATE_AFTER_TYPE == 1) {
			return "redirect:/test/testForm";
		} else {
			return "redirect:/test/testList";
		}
	}

	
	@RequestMapping(value = "testyUele")
	public String testUele(TestVo vo, Test dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.uelete(dto);

		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/test/testList";
	}

	
	@RequestMapping(value = "testyDele")
	public String testDele(TestVo vo, RedirectAttributes redirectAttributes) throws Exception {

		service.delete(vo);

		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/test/testList";
	}

	
	@RequestMapping(value = "testyMultiUele")
	public String testMultiUele(TestVo vo, Test dto, RedirectAttributes redirectAttributes) throws Exception {

		for (String checkboxSeq : vo.getCheckboxSeqArray()) {
			dto.setIfnaSeq(checkboxSeq);
			service.uelete(dto);
		}

		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/test/testList";
	}

	
	@RequestMapping(value = "testMultiDele")
	public String testMultiDele(TestVo vo, RedirectAttributes redirectAttributes) throws Exception {

		for (String checkboxSeq : vo.getCheckboxSeqArray()) {
			vo.setIfnaSeq(checkboxSeq);
			service.delete(vo);
		}

		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/test/testList";
	}
	
	
	@RequestMapping("excelDownload")
    public void excelDownload(TestVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		setSearch(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Test> list = service.selectList(vo);
			
//			Workbook workbook = new HSSFWorkbook();	// for xls
	        Workbook workbook = new XSSFWorkbook();
	        Sheet sheet = workbook.createSheet("Sheet1");
	        CellStyle cellStyle = workbook.createCellStyle();        
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;
			
//	        each column width setting	        
	        sheet.setColumnWidth(0, 2100);
	        sheet.setColumnWidth(1, 3100);

//	        Header
	        String[] tableHeader = {"Seq", "국가 이름", "국가 이름 (영문)", "국가 코드 (2자리)", "국가 코드 (3자리)", "사용", "순서", "등록일", "수정일"};

	        row = sheet.createRow(rowNum++);
	        
			for(int i=0; i<tableHeader.length; i++) {
				cell = row.createCell(i);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				cell.setCellValue(tableHeader[i]);
			}

//	        Body
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);
	            
//	            String type: null 전달 되어도 ok
//	            int, date type: null 시 오류 발생 하므로 null check
//	            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅	            
	            
	            cell = row.createCell(0);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            cell.setCellValue(Integer.parseInt(list.get(i).getIfnaSeq()));
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getIfnaName());
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getIfnaNameEng());
	        	
	            cell = row.createCell(3);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getIfnaCode2Char());
	            
	            cell = row.createCell(4);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getIfnaCode3Char());
	            
	            cell = row.createCell(5);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            if(list.get(i).getIfnaUseNy() != null) cell.setCellValue(list.get(i).getIfnaUseNy() == 0 ? "N" : "Y");
	            
	            cell = row.createCell(6);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            if(list.get(i).getIfnaOrder() != null) cell.setCellValue(list.get(i).getIfnaOrder());	            
	            
	            cell = row.createCell(7);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	if(list.get(i).getRegDateTime() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getRegDateTime()));
	            
	            cell = row.createCell(8);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            if(list.get(i).getModDateTime() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getModDateTime()));
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }
	
	@RequestMapping(value = "testInstagram")
	public String testInstagram() throws Exception {
		


		return "test/testInstagram";
	}
	
	
	@RequestMapping(value = "publicCorona1List")
	public String publicCorona1List(Model model) throws Exception {
		System.out.println("asdasdasdf");
		
		String apiUrl = "http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=dNLcjyriV9IBD5djvIMsq16GYwW%2F8N%2FCtnCNvRj66yaLV9jXKhipDNCJFDcDzorgqnVsJsz5gmYoibNbAG0sdw%3D%3D&numOfRows=3&pageNo=1&type=json";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while ((line = bufferedReader.readLine()) != null) {
			System.out.println("line: " + line);
			stringBuilder.append(line);
		}
		
		bufferedReader.close();
		httpURLConnection.disconnect();
		
      ObjectMapper objectMapper = new ObjectMapper();
      
      Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
      
      System.out.println("######## Map");
		for (String key : map.keySet()) {
			String value = String.valueOf(map.get(key));	// ok
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
		
		Map<String, Object> header = new HashMap<String, Object>();
		header = (Map<String, Object>) map.get("header");
		
		System.out.println("######## Header");
		for (String key : header.keySet()) {
			String value = String.valueOf(header.get(key));	// ok
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
		String aaa = (String) header.get("resultCode");
		
		System.out.println("header.get(\"resultCode\"): " + header.get("resultCode"));
		System.out.println("header.get(\"resultMsg\"): " + header.get("resultMsg"));
		
		Map<String, Object> body = new HashMap<String, Object>();
		body = (Map<String, Object>) map.get("body");
		
//		List<Home> items = new ArrayList<Home>();
//		items = (List<Home>) body.get("items");
//		
//		System.out.println("items.size(): " + items.size());
//		
//		System.out.println("items.toString(): " + items.toString());
		
//		model.addAllAttributes(map);
		model.addAllAttributes(header);
		model.addAllAttributes(body);
		
//		model.addAttribute("header", header);
//		model.addAttribute("body", body);
		
		return "test/publicCorona1List";
	}
	
	
	
	
//	@RequestMapping(value = "publicCorona1List")
//	public String publicCorona1List(Model model) throws Exception {
//		
//		System.out.println("asdfasdfasdf");
//		
//		String apiUrl = "http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=dNLcjyriV9IBD5djvIMsq16GYwW%2F8N%2FCtnCNvRj66yaLV9jXKhipDNCJFDcDzorgqnVsJsz5gmYoibNbAG0sdw%3D%3D&numOfRows=3&pageNo=1&type=json";
//		
//		URL url = new URL(apiUrl);
//		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
//		httpURLConnection.setRequestMethod("GET");
//		
//		BufferedReader bufferedReader;
//		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
//			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
//		} else {
//			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
//		}
//		
//		StringBuilder stringBuilder = new StringBuilder();
//		String line;
//		while ((line = bufferedReader.readLine()) != null) {
//			System.out.println("line: " + line);
//			stringBuilder.append(line);
//		}
//
//		bufferedReader.close();
//		httpURLConnection.disconnect();
//
//		System.out.println("stringBuilder.toString(): " + stringBuilder.toString());
//		
////		json object + array string -> java map
//		
//        ObjectMapper objectMapper = new ObjectMapper();
//        Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
//        
//        System.out.println("######## Map");
//		for (String key : map.keySet()) {
//			String value = String.valueOf(map.get(key));	// ok
//			System.out.println("[key]:" + key + ", [value]:" + value);
//		}
//		
//		Map<String, Object> header = new HashMap<String, Object>();
//		header = (Map<String, Object>) map.get("header");
//		
//		System.out.println("######## Header");
//		for (String key : header.keySet()) {
//			String value = String.valueOf(header.get(key));	// ok
//			System.out.println("[key]:" + key + ", [value]:" + value);
//		}
//		
////		String aaa = (String) header.get("resultCode");
//		
////		System.out.println("header.get(\"resultCode\"): " + header.get("resultCode"));
////		System.out.println("header.get(\"resultMsg\"): " + header.get("resultMsg"));
//		
//		Map<String, Object> body = new HashMap<String, Object>();
//		body = (Map<String, Object>) map.get("body");
//		
//		List<Test> items = new ArrayList<Test>();
//		items = (List<Test>) body.get("items");
//		
//		
//		System.out.println("items.size(): " + items.size());
//		
////		for(Home item : items) {
////			System.out.println(item.getMM());
////		}
//		
//		model.addAllAttributes(header);
//		model.addAllAttributes(body);
//		
//		return "test/publicCorona1List";
//	}
	
	
	@RequestMapping(value = "publicCorona1JsonNodeList")
	public String publicCorona1JsonNodeList(Model model) throws Exception {
		
		String apiUrl = "http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=dNLcjyriV9IBD5djvIMsq16GYwW%2F8N%2FCtnCNvRj66yaLV9jXKhipDNCJFDcDzorgqnVsJsz5gmYoibNbAG0sdw%3D%3D&numOfRows=3&pageNo=1&type=json";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while ((line = bufferedReader.readLine()) != null) {
			System.out.println("line: " + line);
			stringBuilder.append(line);
		}

		bufferedReader.close();
		httpURLConnection.disconnect();

		ObjectMapper objectMapper = new ObjectMapper();
		JsonNode node = objectMapper.readTree(stringBuilder.toString());
		
		System.out.println("node.get(\"header\").get(\"resultCode\").asText(): " + node.get("header").get("resultCode").asText());
		System.out.println("node.get(\"header\").get(\"resultMsg\").asText(): " + node.get("header").get("resultMsg").asText());
		System.out.println("node.get(\"header\").get(\"resultMsg\").asText(): " + node.get("body").get("items").get(0).get("KIT_PROD_QTY").asText());
		
		model.addAttribute("node", node);
		
//		model.addAttribute(node);
		
		return "test/publicCorona1JsonNodeList";
	}

}