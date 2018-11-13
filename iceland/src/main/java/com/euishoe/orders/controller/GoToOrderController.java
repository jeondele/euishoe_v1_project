package com.euishoe.orders.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.customers.service.CustomerService;
import com.euishoe.customers.service.CustomerServiceImpl;
import com.euishoe.orders.service.OrderService;
import com.euishoe.orders.service.OrderServiceImpl;
import com.euishoe.products.service.ProductService;
import com.euishoe.products.service.ProductServiceImpl;

/**
 * /order에 대한 요청 처리 컨트롤러
 * @author 전상일
 *
 */
public class GoToOrderController implements Controller {
	
	OrderService orderService;
	ProductService productService;
	CustomerService customerService;
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		orderService = (OrderService)factory.getBean(OrderServiceImpl.class);
		productService = (ProductService)factory.getBean(ProductServiceImpl.class);
		customerService = (CustomerService)factory.getBean(CustomerServiceImpl.class);
		String productCode = request.getParameter("productCode");
		System.out.println("프로독트 코드는???" + productCode);
		String productNum = request.getParameter("productNum");
		System.out.println("주문번호??"+productNum);
		String productCount = request.getParameter("productCount");
		String customerId = "";
		
		Cookie[] cookies = request.getCookies();
		for (Cookie cookie : cookies) {
			if(cookie.getName().equals("loginId")) {
				customerId = cookie.getValue();
			}
		}
		System.out.println("쿠키값을 못가져오나????" + customerId);
		//개인주소 포인트 가져오기
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		Map<String, Object> customer = null;
		try {
			customer= customerService.customerOrderInfo(customerId);
			System.out.println("customer정보조회???"+customer);
			list.add(customer);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//코드 매핑 - productCode,
		String[] codes = new String[5];
		try {
			for (int i = 0; i < codes.length; i++) {
				System.out.println("코드값 받으러 들어옴??");
				codes[i] = orderService.productCodeParsing(productCode)[i];
				System.out.println(codes[i]);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
				
		//주문번호 매핑 = productNum,,
		List<Map<String,Object>> productInfo = null;
		try {
			productInfo =productService.selectAllById(Integer.parseInt(productNum));
		} catch (Exception e) {}
		//상품코드, 상의코드, 하의코드, 하의코드 사이즈, 상품코드 사이즈 가져옴
		mav.addObject("codes", codes);
		//개인의 주소 번호 및 포인트도 가져온다
		mav.addObject("customerOrderInfo", list);
		//주문번호 등등 맵핑
		mav.addObject("productInfo", productInfo);
		//주문 수량 매핑
		mav.addObject("productCount", productCount);
		//혹시모를 
		mav.setView("/order/direct-shopping-cart.jsp"); // 결제창으로 설정
		return mav;
	}

}
