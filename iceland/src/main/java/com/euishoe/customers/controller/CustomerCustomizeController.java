package com.euishoe.customers.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

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
public class CustomerCustomizeController implements Controller {
	
	CustomerService customerService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		customerService = (CustomerService)factory.getBean(CustomerServiceImpl.class);

		String customerId = (String) request.getParameter("customerId");
		int customerBody = (request.getParameter("customerBody") == "") ? 0 : Integer.valueOf(request.getParameter("customerBody"));
		int customerShoulder = (request.getParameter("customerShoulder") == "") ? 0 : Integer.valueOf(request.getParameter("customerShoulder"));
		int customerArm = (request.getParameter("customerArm") == "") ? 0 : Integer.valueOf(request.getParameter("customerArm"));
		int customerLeg = (request.getParameter("customerLeg") == "") ? 0 : Integer.valueOf(request.getParameter("customerLeg"));
		
		
		
		Map<String, Object> params = new HashMap<>();
		
		params.put("customerBody", customerBody);
		params.put("customerShoulder", customerShoulder);
		params.put("customerArm", customerArm);
		params.put("customerLeg", customerLeg);
		params.put("customerId", customerId);
		
		try {
			customerService.modifyCustomizingInfo(params);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		mav.addObject("resultMessage", "Customizing 정보 저장 성공");
		mav.setView("/customer/customizing/customizing.jsp");
		return mav;
	}

}
