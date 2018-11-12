package com.euishoe.customers.controller;

import java.io.IOException;

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
		// 폼으로 이동
		if(request.getParameter("member_id") != null) {
			Customer customer;
			String customerId = (String)request.getParameter("member_id").trim();
			System.out.println("아이디값은?"+customerId);
			String newPasswd = (String)request.getParameter("new_passwd").trim();
			//String name = (String)request.getParameter("name").trim();
			String address = (String)request.getParameter("address").trim()+request.getParameter("detailAddress").trim();
			String postCode = (String)request.getParameter("postNum");
			String phoneNum = (String)request.getParameter("phoneNum");
			String email = "";
			if(request.getParameter("emailHost").trim().equals("직접입력")) {
				email = request.getParameter("email");
			}else {
				email = request.getParameter("email").trim()+"@"+request.getParameter("emailHost");
			}
			try {
				customer = customerService.getCustomerInfo(customerId);
				System.out.println("아이디값으로 만든 customer객체"+customer);
				customer.setCustomerPassword(newPasswd);
				customer.setCustomerPostcode(postCode);
				customer.setCustomerAddress(address);
				customer.setCustomerPhonenumber(phoneNum);
				customer.setCustomerEmail(email);
				customerService.modifyInfo(customer);
				System.out.println("수정완료");
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			System.out.println("아이디값이없다");
			try {
				response.sendRedirect("/iceland/customer/mypage/myInfo.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//mav.setView("/iceland/customer/mypage/myInfo.jsp");
			//return mav;
		}
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
