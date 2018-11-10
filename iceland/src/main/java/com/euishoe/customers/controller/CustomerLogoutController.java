package com.euishoe.customers.controller;

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
		
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie : cookies){
		    if(cookie.getName().equals("loginId")) {
		  	    cookie.setMaxAge(0);
		  	    cookie.setPath("/iceland/");
		  	    response.addCookie(cookie);
		  	    mav.addObject("loginCookie", cookie);   
		    }else if(cookie.getName().equals("carts")) {
		    	cookie.setMaxAge(0);
		    	cookie.setPath("/iceland/");
		    	response.addCookie(cookie);
		    	mav.addObject("carts", cookie);
		    }else if(cookie.getName().equals("wishes")) {
		    	cookie.setMaxAge(0);
		    	cookie.setPath("/iceland/");
		    	response.addCookie(cookie);
		  	    mav.addObject("wishes", cookie);   
		    }
		  /*  
		    if(cookie.getName().equals("idRemember")) {
		    	cookie.setMaxAge(60 * 60 * 24 * 1000);
		    	cookie.setPath("/iceland/");
		    	response.addCookie(cookie);
		    	mav.addObject("rememberCookie", cookie);
		    	
		    }*/
		} 
		mav.setView("redirect:/iceland/index.jsp");
		return mav;
	}

}
