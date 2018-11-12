package com.euishoe.common;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class DecodeForTag {
	public static String testDecode(String input) throws UnsupportedEncodingException {
		return URLDecoder.decode(input, "UTF-8");
	}
	
	public static Cookie getCookie(HttpServletRequest request,String key) {
		Cookie[] cookies = request.getCookies();
		Cookie returnCookie = null;
		
		for (Cookie cookie : cookies) {
			if(cookie.getName().equals(key)) {
				returnCookie = cookie;
			}
		}
		
		return returnCookie;
	}
}
