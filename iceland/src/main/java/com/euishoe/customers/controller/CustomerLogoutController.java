package com.euishoe.customers.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.customers.dto.Customer;
import com.euishoe.customers.service.CustomerService;
import com.euishoe.customers.service.CustomerServiceImpl;

/**
 * /user/list.mall에 대한 로그아웃 요청 처리 컨트롤러
 * @author 김기정
 *
 */
public class CustomerLogoutController implements Controller {

	CustomerService customerService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		customerService = (CustomerService)factory.getBean(CustomerServiceImpl.class);
		
		customerService.logout(request,response,mav);
		
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie : cookies){
			System.out.println(cookie.getName() + " : " + cookie.getValue());
			System.out.println(cookie.getName().substring(0, 3));
		    if(cookie.getName().equals("loginId")) {
		  	    cookie.setMaxAge(0);
		  	    cookie.setPath("/iceland/");
		  	    response.addCookie(cookie);
		  	    mav.addObject("loginCookie", cookie);   
		    }else if(cookie.getName().substring(0, 4).equals("cart")) {
		    	String cookStr = "";
		    	try {
					cookStr = URLDecoder.decode(cookie.getValue(), "UTF-8");
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
                    System.out.println(cookStr);		    	
		    	cookie.setMaxAge(0);
		    	cookie.setPath("/iceland/");
		    	response.addCookie(cookie);
		    }else if(cookie.getName().substring(0, 4).equals("wish")) {
		    	cookie.setMaxAge(0);
		    	cookie.setPath("/iceland/");
		    	response.addCookie(cookie);
		    }
		  /*  
		    if(cookie.getName().equals("idRemember")) {
		    	cookie.setMaxAge(60 * 60 * 24 * 1000);
		    	cookie.setPath("/iceland/");
		    	response.addCookie(cookie);
		    	mav.addObject("rememberCookie", cookie);
		    	
		    }*/
		} 
		mav.setView("redirect:/iceland/home.es");
		return mav;
	}

}
