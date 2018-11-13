package com.euishoe.orders.controller;

import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.orders.service.OrderService;
import com.euishoe.orders.service.OrderServiceImpl;

/**
 * /order에 대한 요청 처리 컨트롤러
 * @author 김기정
 *
 */
public class OrderController implements Controller {
	
	OrderService orderService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		orderService = (OrderService)factory.getBean(OrderServiceImpl.class);
		
		String productCode = request.getParameter("productCode");
		String productNum = request.getParameter("productNum");
		String productCount = request.getParameter("productCount");
		String customerId = "";
		
		Cookie[] cookies = request.getCookies();
		for (Cookie cookie : cookies) {
			if(cookie.getName().equals("loginId")) {
				customerId = cookie.getValue();
			}
		}
		
		//개인주소 포인트 가져오기
		Map<String, Object> list = null;
		try {
			list= orderService.customerOrderInfo(customerId);
		} catch (Exception e) {}
		
		//코드 매핑 - productCode,
		String[] codes = null;
		try {
			codes = orderService.productCodeParsing(productCode);
		} catch (Exception e) {}
		
		
		mav.addObject("codes", codes);
		mav.addObject("customerOrderInfo", list);
		mav.addObject("productCount", list);
		mav.setView("/order/shopping-cart.jsp"); // 결제창으로 설정
		
		return mav;
	}

}
