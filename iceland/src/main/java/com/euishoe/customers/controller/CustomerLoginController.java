package com.euishoe.customers.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;

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
import com.google.gson.Gson;

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
		
		System.out.println(rememberCustomerId);
		Customer customer = null;
		Cookie[] cookies = null;
		
		try {
			customer = customerService.certify(customerId, customerPassword);
			
			/*
			 * 쿠키 생성 
			 * 	1. 고객 정보 : loginId
			 * 	2. 장바구니 리스트 : carts
			 *  3. 위시리스트 : wishes 
			 * */
			
			if(customer != null) {
				/* 아이디 쿠키 생성 */
				Cookie cookie = new Cookie("loginId", customerId);
				cookie.setMaxAge(60 * 60 * 24 * 1000);
				cookie.setPath("/iceland/");
				response.addCookie(cookie);
				mav.addObject("loginCookie", cookie);
				mav.addObject("customer", customer);
				
				/* 장바구니 리스트 쿠키 생성 */
				
				// 장바구니 리스트 
				List<HashMap<String,Object>> listCart = customerService.listCartForLogin(customer.getCustomerId());
				
				// 리스트 내 객체를 담을 HashMap
				HashMap hashmapCart = new HashMap<String,String>();
				for (HashMap<String, Object> hash : listCart) {
					hashmapCart.put("image_ref", hash.get("image_ref"));
					hashmapCart.put("PRODUCT_NAME", hash.get("PRODUCT_NAME"));
					hashmapCart.put("product_count", hash.get("product_count"));
					hashmapCart.put("PRODUCT_PRICE", hash.get("PRODUCT_PRICE"));
					
					// response 확인
					System.out.println("product_count : "  + hashmapCart.get("product_count"));
					System.out.println("PRODUCT_PRICE : "  + hashmapCart.get("PRODUCT_PRICE"));
				}
				
				// utf-8방식으로 인코딩 후 JSON 객체 만들기
				Gson gson = new Gson();
				String json = "";
				try {
					json = URLEncoder.encode(gson.toJson(hashmapCart).trim(), "utf-8");
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				// 쿠키 생성
				Cookie cartCookie = new Cookie("carts", gson.toJson(hashmapCart));
				
				response.setCharacterEncoding("utf-8");
				response.setContentType("text/html;charset=UTF-8");
				
				cartCookie.setMaxAge(60 * 60 * 24 * 1000);
				cartCookie.setPath("/iceland/");
				response.addCookie(cartCookie);
				
				mav.addObject("carts", cartCookie);
				
				/* 위시리스트 쿠키 생성 */
				List<HashMap<String,Object>> listWish = customerService.listWish(customer.getCustomerId());
				
				// 리스트 내 객체를 담을 HashMap
				HashMap hashmapWish = new HashMap<String,String>();
				for (HashMap<String, Object> hash : listCart) {
					hashmapWish.put("image_ref", hash.get("image_ref"));
					hashmapWish.put("PRODUCT_NAME", hash.get("PRODUCT_NAME"));
					hashmapWish.put("product_manufacturer", hash.get("product_manufacturer"));
					hashmapWish.put("PRODUCT_PRICE", hash.get("PRODUCT_PRICE"));
					
					// 테스트 데이터 확인
					System.out.println("product_count : "  + hashmapWish.get("product_count"));
					System.out.println("PRODUCT_PRICE : "  + hashmapWish.get("PRODUCT_PRICE"));
				}
				
				// utf-8방식으로 인코딩 후 JSON 객체 만들기
				json = "";
				
				try {
					json = URLEncoder.encode(gson.toJson(hashmapWish).trim(), "utf-8");
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				// 쿠키 생성
				Cookie wishCookie = new Cookie("wishes", gson.toJson(hashmapWish));
				
				response.setCharacterEncoding("utf-8");
				response.setContentType("text/html;charset=UTF-8");
				
				wishCookie.setMaxAge(60 * 60 * 24 * 1000);
				wishCookie.setPath("/iceland/");
				response.addCookie(wishCookie);
				
				mav.addObject("wishes", wishCookie);
				
				// 아이디 기억 버튼
				if(rememberCustomerId != null) {
					Cookie rememberCookie = new Cookie("idRemember", customerId);
					rememberCookie.setMaxAge(60 * 60 * 24 * 1000);
					rememberCookie.setPath("/iceland/");
					response.addCookie(rememberCookie);
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
