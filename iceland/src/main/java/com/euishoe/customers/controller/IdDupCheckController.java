package com.euishoe.customers.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;

import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.common.web.FilterParam;
import com.euishoe.customers.dto.Customer;
import com.euishoe.customers.service.CustomerService;
import com.euishoe.customers.service.CustomerServiceImpl;

/**
 * id중복체크에 대한 비동기 요청 처리 컨트롤러
 * @author 박시원
 *
 */
public class IdDupCheckController implements Controller {

	CustomerService customerService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {

		System.out.println("컨트롤러옴");
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		customerService = (CustomerService)factory.getBean(CustomerServiceImpl.class);
		PrintWriter out = null;
		
		String inputId = request.getParameter("inputId");
		System.out.println("컨트롤러진입. 입력값은?"+inputId);
		String res="";
		try {
			if(customerService.getCustomerInfo(inputId) == null) {
				res="ok";
			}else {
				res="na";
			}
			response.setContentType("text/plain; charset=utf-8");
			out.println(res);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
