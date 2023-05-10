package com.junefw.infra.category;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="/v1/infra/category/")
public class CategoryController {
	
	@Autowired
	CategoryServiceImpl service;
	
	@ResponseBody
	@RequestMapping(value = "selectListCachedCategoryAll")
	public Map<String, Object> selectListCachedCategoryAll(Category dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		List<Category> result = service.selectListCachedCategoryAll();

		returnMap.put("rt", "success");
		returnMap.put("list", result);
		 
		return returnMap;
	}

}
