package com.euishoe.customers.controller;

import javax.servlet.ServletException;
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
		String old_url = request.getHeader("referer");
		
		System.out.println("old_url : " + old_url);
		System.out.println(rememberCustomerId);
		
		if(customerId == null) {
			mav.setView("/customer/login/login.jsp");
			return mav;
		}
		
		try {
			Customer customer = customerService.certify(customerId, customerPassword);
			/*
			 * 쿠키 생성 
			 * 	1. 고객 정보 : loginId
			 * 	2. 장바구니 리스트 : carts
			 *  3. 위시리스트 : wishes 
			 * 
			 */
			mav = customerService.login(request, response, mav, customer, rememberCustomerId);
			if(customer != null) {
				//mav.setView(old_url);
				mav.setView("/home.es");
				
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
