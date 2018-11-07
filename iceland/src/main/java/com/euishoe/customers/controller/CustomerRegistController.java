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
public class CustomerRegistController implements Controller {

	CustomerService customerService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		customerService = (CustomerService)factory.getBean(CustomerServiceImpl.class);
		
		// 회원가입을 위한 customer객체 생성
		String customerId = request.getParameter("userid");
		String customerPassword = request.getParameter("password");
		String customerName = request.getParameter("userName");
		String customerPhonenumber = request.getParameter("userPhone");
		String customerEmail = request.getParameter("email")+"@"+request.getParameter("emailHost");
		String customerPostcode = request.getParameter("postNum"); 
		String customerAddress =  request.getParameter("address");
		String customerBirthday = request.getParameter("birth");
		String customerGender = request.getParameter("gender");
		switch (customerGender.trim()) {
			case "여자":
				customerGender = "F";
				break;
			case "남자":
				customerGender = "M";
				break;
		}
		String customerJacketSize = request.getParameter("jacketSize");
		String customerPantsSize = request.getParameter("pantsSize");
		String customerHeight = request.getParameter("height");
		switch (customerHeight.trim()) {
			case "155이상 ~ 160미만":
				customerHeight = "157";
				break;
			case "160이상 ~ 165미만":
				customerHeight = "162";
				break;
			case "165이상 ~ 170미만":
				customerHeight = "167";
				break;
			case "170이상 ~ 175미만":
				customerHeight = "172";
				break;
			case "175이상 ~ 180미만":
				customerHeight = "177";
				break;
			case "180이상 ~ 185미만":
				customerHeight = "182";
				break;
			case "185 이상":
				customerHeight = "187";
				break;
		}
		// 추가컬럼... 입렵받은값에따라 db저장할값 설정 수정 필요!!!!!!
		int customerBody = Integer.parseInt(request.getParameter("body"));
		int customerShoulder = Integer.parseInt(request.getParameter("shoulder"));
		int customerArm = Integer.parseInt(request.getParameter("arm"));
		int customerLeg = Integer.parseInt(request.getParameter("leg"));
		
		Customer customer = new Customer(customerId, customerName, customerPassword, 
				customerPhonenumber, customerEmail, customerAddress, customerPostcode, 
				customerBirthday, customerGender, customerJacketSize, customerPantsSize, 
				customerHeight, customerBody, customerShoulder, customerArm, customerLeg);
		
		// 고객객체생성
		try {
			customerService.create(customer);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 고객객체생성(가입)완료 후 로그인페이지로 보내줌
		mav.setView("/customer/login/login.jsp");
		return mav;
	}
}
