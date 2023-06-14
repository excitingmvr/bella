package com.junefw.common.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.junefw.common.constants.Constants;

public class UtilRegMod {

	public static String getClientIp() {
		HttpServletRequest httpServletRequest = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		return getClientIpCore(httpServletRequest);
	}
	
	
	public static String getClientIp(HttpServletRequest httpServletRequest) {
		return getClientIpCore(httpServletRequest);
	}
	
	
	public static String getClientIpCore(HttpServletRequest httpServletRequest) {
		String ip = null;
		
		ip = httpServletRequest.getHeader("X-Forwarded-For");
        
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = httpServletRequest.getHeader("Proxy-Client-IP"); 
        } 
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = httpServletRequest.getHeader("WL-Proxy-Client-IP"); 
        } 
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = httpServletRequest.getHeader("HTTP_CLIENT_IP"); 
        } 
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = httpServletRequest.getHeader("HTTP_X_FORWARDED_FOR"); 
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = httpServletRequest.getHeader("X-Real-IP"); 
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = httpServletRequest.getHeader("X-RealIP"); 
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = httpServletRequest.getHeader("REMOTE_ADDR");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = httpServletRequest.getRemoteAddr(); 
        }
        return ip;
	}
	
	
	public static String getSessionSeq() {
		HttpServletRequest httpServletRequest = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		return getSessionSeqCore(httpServletRequest);
	}
	
	
	public static String getSessionSeq(HttpServletRequest httpServletRequest) {
		return getSessionSeqCore(httpServletRequest);
	}
	
	
	public static String getSessionSeqCore(HttpServletRequest httpServletRequest) {
		HttpSession httpSession =  httpServletRequest.getSession();
		String rtSeq;
		
		if(httpServletRequest.getRequestURI().contains(Constants.ABBREVIATION_ADMIN)) {
			rtSeq = (String) httpSession.getAttribute(Constants.SESSION_SEQ_NAME_XDM);
		} else {
			rtSeq = (String) httpSession.getAttribute(Constants.SESSION_SEQ_NAME_USR);
		}
		
		return rtSeq;
	}
	
	
	public static int getDevice() {
		HttpServletRequest httpServletRequest = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		return getDeviceCore(httpServletRequest);
	}
	
	
	public static int getDevice(HttpServletRequest httpServletRequest) {
		return getDeviceCore(httpServletRequest);
	}
	
	
	public static int getDeviceCore(HttpServletRequest httpServletRequest) {

		int device;
		String userAgent = httpServletRequest.getHeader("User-Agent").toUpperCase();
		
		if(userAgent.indexOf("MOBI") > -1) {
			if (userAgent.indexOf("ANDROID") > -1) {
				device = 13;
			} else if (userAgent.indexOf("IPHONE") > -1) {
				device = 14;
			} else if (userAgent.indexOf("IPAD") > -1) {
				device = 15;
			} else {
				device = 20;	// mobile etc
			}
		} else {
			if(userAgent.indexOf("Trident") > -1) {
				device = 5;	// ie
			} else if(userAgent.indexOf("EDGE") > -1) {
				device = 1;	// edge
			} else if(userAgent.indexOf("WHALE") > -1) {
				device = 8;	// Naver Whale
			} else if(userAgent.indexOf("OPERA") > -1 || userAgent.indexOf("OPR") > -1) {
				device = 3;	// opera
			} else if(userAgent.indexOf("FIREFOX") > -1) {
				device = 6;		// firefox
			} else if(userAgent.indexOf("SAFARI") > -1 && userAgent.indexOf("CHROME") == -1 ) {
				device = 7;	// safari
			} else if(userAgent.indexOf("CHROME") > -1) {
				device = 4;		// Chrome
			} else {
				device = 12;	//web etc
			}
			return device;
		}

		return device;
		
//	   if (userAgent.indexOf("iphone") > -1) {
//		   device = "iPhone";
//	    }else if (userAgent.indexOf("ipad") > -1) {
//	    	device = "iPad";
//	    }else if (userAgent.indexOf("android") > -1) {
//	    	device = "android";
//	    } else {
//			if(userAgent.indexOf("Trident") > -1) {
//				// IE : 5
//				device = "ie";
//			} else if(userAgent.indexOf("Edge") > -1) {
//				// Edge: 1
//				device = "edge";
//			} else if(userAgent.indexOf("Whale") > -1) {
//				// Naver Whale : 8
//				device = "whale";
//			} else if(userAgent.indexOf("Opera") > -1 || userAgent.indexOf("OPR") > -1) {
//				// Opera : 3
//				device = "opera";
//			} else if(userAgent.indexOf("Firefox") > -1) {
//				// Firefox : 6
//				device = "firefox";
//			} else if(userAgent.indexOf("Safari") > -1 && userAgent.indexOf("Chrome") == -1 ) {
//				// Safari : 7
//				device = "safari";
//			} else if(userAgent.indexOf("Chrome") > -1) {
//				// Chrome : 4
//				device = "chrome";
//			} else {
//				// 12
//				device = "other";
//			}
//	    }

	}
}
