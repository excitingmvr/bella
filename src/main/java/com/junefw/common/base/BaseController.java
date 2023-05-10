package com.junefw.common.base;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.Base64.Decoder;
import java.util.Base64.Encoder;
import java.util.Calendar;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

public class BaseController {
	
	public String todayDateString () {
		SimpleDateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd");
		Calendar today = Calendar.getInstance();
		String todayString = formatDate.format(today);	
		return todayString;
	}
	
	public String base64Decoder (String str) {
		String decodedString = null;
		Decoder decoder = Base64.getDecoder();
		byte[] decodedBytes = decoder.decode(str);
		try {
			decodedString = new String(decodedBytes, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return decodedString;
	}
	
	public String base64Encoder (String str) {
		String encodedString = null;
		byte[] targetBytes = str.getBytes(); 
		Encoder encoder = Base64.getEncoder(); 
		byte[] encodedBytes = encoder.encode(targetBytes);
		try {
			encodedString = new String(encodedBytes, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return encodedString;
	}
	
	public static String getClientIp(HttpServletRequest request) {
        String ip = null;
        ip = request.getHeader("X-Forwarded-For");
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getHeader("Proxy-Client-IP"); 
        } 
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getHeader("WL-Proxy-Client-IP"); 
        } 
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getHeader("HTTP_CLIENT_IP"); 
        } 
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getHeader("HTTP_X_FORWARDED_FOR"); 
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getHeader("X-Real-IP"); 
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getHeader("X-RealIP"); 
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getHeader("REMOTE_ADDR");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getRemoteAddr(); 
        }
		return ip;
	}
	
	public static int getRandomNumberInt(){
		Random rand = new Random();
		String rst = Integer.toString(rand.nextInt(8) + 1);
		for(int i=0; i < 7; i++){
			rst += Integer.toString(rand.nextInt(9));
		}
		return Integer.parseInt(rst);
	}
	
	public static String getRandomNumberStr(){
		Random rand = new Random();
		String rst = Integer.toString(rand.nextInt(8) + 1);
		for(int i=0; i < 7; i++){
			rst += Integer.toString(rand.nextInt(9));
		}
		return rst;
	}
	
//	public void simpleMailSender(String from, String to, String title, String contents) {
//		try {
//			MimeMessage message = mailSender.createMimeMessage();
//			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
//
//			messageHelper.setFrom(from);
//			messageHelper.setTo(to);
//			messageHelper.setSubject(title);
////			messageHelper.setText(contents);
//			messageHelper.setText(contents, true);
//
//			mailSender.send(message);
//		} catch (Exception e) {
//			System.out.println(e);
//		}
//	}
	
}
