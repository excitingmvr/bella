package com.junefw.infra.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.junefw.common.base.Base;

@Controller
public class IndexController extends Base{
	
	String pathXdmCommon = "xdm/v1/infra/index/";
	String pathUsrCommon = "usr/v1/infra/index/";
	
	String pathRedirectCommon = "redirect:/v1/infra/nationality/";	

	
	@RequestMapping(value = {"/xdm", "/v1/infra/index/indexXdmView"})
	public String indexXdmView() throws Exception {

		return pathXdmCommon + "indexXdmView";
	}
	
	
	@RequestMapping(value = {"/", "/v1", "/v1/infra/index/indexUsrView"})
	public String indexUsrView() throws Exception {

		return pathUsrCommon + "indexUsrView";
	}
}
