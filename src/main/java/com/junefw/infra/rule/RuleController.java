package com.junefw.infra.rule;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.junefw.common.base.BaseController;
@Controller
@RequestMapping(value = "/v1/infra/rule/")
public class RuleController extends BaseController {

	String pathRedirectCommon = "redirect:/v1/infra/rule/";
	
	String pathXdmCommon = "xdm/v1/infra/rule/";
	String pathUsrCommon = "usr/v1/infra/rule/";
	
	
	@RequestMapping(value = "serviceUsrView")
	public String serviceUsrView() throws Exception {
		
		return pathUsrCommon + "serviceUsrView";
	}
	
	
	@RequestMapping(value = "privacyUsrView")
	public String privacyUsrView() throws Exception {
		
		return pathUsrCommon + "privacyUsrView";
	}
}
