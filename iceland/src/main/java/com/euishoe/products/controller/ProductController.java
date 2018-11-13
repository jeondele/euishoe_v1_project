package com.euishoe.products.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.common.filter.LoginCheckFilter;
import com.euishoe.common.web.FilterParam;
import com.euishoe.products.service.ProductService;
import com.euishoe.products.service.ProductServiceImpl;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

/**
 * /user/list.mall에 대한 요청 처리 컨트롤러
 * @author 김기정
 *
 */
public class ProductController implements Controller {
	
		ProductService productService;
		
		@Override
		public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
				throws ServletException {
			ModelAndView mav = new ModelAndView();
			
			XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
			productService = (ProductService)factory.getBean(ProductServiceImpl.class);
			
			
			
			Cookie[] cookies = ((HttpServletRequest) request).getCookies();
			boolean isLogin;
			String cookieName;
			if(cookies != null) {
				for (Cookie cookie : cookies) {
					if(cookie.getName().equals("loginId")) {
						isLogin = true;
						cookieName = cookie.getValue();
						break;
					}
				}
			}
			
		/*	//로그인 관련 쿠키가 있으면
			if(isLogin) {
				request.setAttribute("loginId", cookieName);
			}else {
				if(loginPage == null) {
					//로그인 관련 쿠키가 없는데 로그인 페이지도 없으면 익셉션
					throw new ServletException("LoginCheckFilter에 loginPage가 설정되어 있지 않습니다.");
				}
				//로그인 페이지로 포워드 시, request에 요청 uri 저장
				request.setAttribute("uri", ((HttpServletRequest)request).getRequestURI());
				request.getServletContext().getRequestDispatcher(loginPage).forward(request, response);
			}*/
			
			FilterParam filterParam = new FilterParam();
			List<String> gsonListAll = null;
			try {
				gsonListAll = productService.convertToGson(productService.filter(filterParam));
			} catch (Exception e1) {
			}
			
			ArrayList<HashMap<String, Object>> jsonObjectList = new ArrayList<HashMap<String, Object>>();
			Gson gson = new Gson();
			JsonObject object = new JsonObject();
			
			for(int i = 0 ; i < gsonListAll.size(); i++) {	
				HashMap<String, Object> convertToJson = gson.fromJson(gsonListAll.get(i), HashMap.class);
				jsonObjectList.add(convertToJson);
		 	}
			
			
			mav.addObject("gsonListAll", gsonListAll);
			mav.addObject("jsonObjectList", jsonObjectList);
			mav.setView("/product/product.jsp");
			return mav;
		}
}
