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
 * /user/list.mall에 대한 요청 처리 컨트롤러
 * @author 김기정
 *
 */
public class CustomerLoginController implements Controller {

	CustomerService customerService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		ModelAndView mav = new ModelAndView();
		
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		customerService = (CustomerService)factory.getBean(CustomerServiceImpl.class);

		String customerId = request.getParameter("username");
		String customerPassword = request.getParameter("password");
		String rememberCustomerId = request.getParameter("idRemember");
		
		Customer customer = null;
		Cookie[] cookies = null;
		
		try {
			customer = customerService.certify(customerId, customerPassword);
			if(customer != null) {
				Cookie cookie = new Cookie("loginId", customerId);
				
				mav.addObject("loginCookie", cookie);
				mav.addObject("customer", customer);
				
				if(rememberCustomerId != null) {
					Cookie rememberCookie = new Cookie("idRemember", customerId);
					mav.addObject("rememberCookie", rememberCookie);
				} else {
					if(request.getCookies() != null) {
						cookies = request.getCookies();
						for(Cookie cookie2 : cookies) {
							if(cookie2.getName().equals("idRemember")) {
								cookie2.setMaxAge(0);
								mav.addObject("rememberCookie", cookie2);
							}
						}
					}
				}
				mav.setView("/index.jsp");
			} else {
				mav.addObject("result", "fail");
				mav.setView("/customer/login/login.jsp");
			}
			
		} catch (Exception e) {
			throw new ServletException("customerService.certify() 예외 발생", e);
		}
		
		return mav;
	}

}
