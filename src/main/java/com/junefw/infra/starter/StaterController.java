package com.junefw.infra.starter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/v1/infra/starter/")
public class StaterController {

	String pathCommon = "usr/v1/starter/module/";
	String pathRedirectCommon = "redirect:/v1/starter/module/";
	
	
	@RequestMapping(value = "starterUsrList")
	public String starterUsrList() throws Exception {
		
		return pathCommon + "starterUsrList";
	}
	
	
	@RequestMapping(value = "starterUsrForm")
	public String starterUsrForm() throws Exception {
		
		return pathCommon + "starterUsrForm";
	}
	
	
		
	
}
