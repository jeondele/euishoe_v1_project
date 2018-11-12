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
import com.google.gson.Gson;
import com.google.gson.JsonObject;

/**
 * /user/list.mall에 대한 요청 처리 컨트롤러
 * @author 김기정
 *
 */
public class CustomerInfoController implements Controller {
	
	CustomerService customerService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		customerService = (CustomerService)factory.getBean(CustomerServiceImpl.class);
//		String loginId = request.getParameter("customerId");
//		String inputPass = (String) request.getAttribute("passwd");
//		System.out.println("입력비번값: "+inputPass);
//		System.out.println("멤버아이디:+"+request.getParameter("member_id"));
//		System.out.println("ajax통신으로 받은 id!!"+loginId);
//		
//		Customer customer;
//		try {
//			customer = customerService.getCustomerInfo(loginId);
//			System.out.println("고객서비스실행결과: "+customer);
//			// customer객체를 json형태로 변환
//			Gson gson = new Gson();
//			String jsonCustomer = gson.toJson(customer);
//			System.out.println("객체 to json: "+jsonCustomer);
//			mav.addObject("jsonCustomer", jsonCustomer);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
        mav.setView("/customer/mypage/myInfo.jsp");
		
		return mav;
	}

}
