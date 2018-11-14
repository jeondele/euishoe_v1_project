package com.euishoe.products.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.common.web.FilterParam;
import com.euishoe.products.dto.ProductInfo;
import com.euishoe.products.service.ProductService;
import com.euishoe.products.service.ProductServiceImpl;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

/**
 * /user/list.mall에 대한 요청 처리 컨트롤러
 * @author 김기정
 *
 */
public class ProductAjaxController implements Controller {
	
		ProductService productService;
		
		@Override
		public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
				throws ServletException {
			ModelAndView mav = new ModelAndView();
			XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
			productService = (ProductService)factory.getBean(ProductServiceImpl.class);
			PrintWriter out = null;
			response.setContentType("text/plain; charset=utf-8");
			
			//paramMapping 
			String tpo = (String) request.getParameter("tpo");
			if(tpo=="") tpo = null;
			String season = request.getParameter("season");
			if(season=="") season = null;
			String price = request.getParameter("price");
			if(price=="") price = null;
			String lowPrice = null;
			String highPrice = null;
			
			if (price != null) {
				String[] priceValues = price.split("/");
				lowPrice = priceValues[0];
				highPrice = priceValues[1];
				System.out.println("lowprice는???????"+lowPrice);
				System.out.println("highprice는???????"+highPrice);
			}
			String fabric = request.getParameter("fabric");
			if(fabric=="") fabric = null;
			System.out.println("fabric는???????"+fabric);
			String color = request.getParameter("color");
			if(color=="") color = null;
			System.out.println("color는???????"+color);
			int bodyType = 0;
			if (request.getParameter("bodyType") != null || request.getParameter("bodyType").equals("")) {
				bodyType = Integer.valueOf(request.getParameter("bodyType"));
			}
			
			int shoulderType = 0;
			if (request.getParameter("shoulderType") != null || request.getParameter("shoulderType").equals("") ) {
				shoulderType = Integer.valueOf(request.getParameter("shoulderType"));
			}
			
			int legType = 0;
			if (request.getParameter("legType") != null || request.getParameter("legType").equals("") ) {
				legType = Integer.valueOf(request.getParameter("legType"));
			}
			
			int armType = 0;
			if (request.getParameter("armType") != null || request.getParameter("armType").equals("") ) {
				armType = Integer.valueOf(request.getParameter("armType"));
			}
			
			String orderByPrice = request.getParameter("orderByPrice");
			if(orderByPrice=="") orderByPrice = null;
			System.out.println("armType는???????"+armType);
			String orderByHitcount = request.getParameter("orderByHitcount");
			if(orderByHitcount=="") orderByHitcount = null;
			System.out.println("orderByPrice는???????"+orderByPrice);
			String orderByStar = request.getParameter("orderByStar");
			if(orderByStar=="") orderByStar = null;
			System.out.println("orderByHitcount는???????"+orderByHitcount);
			System.out.println("orderByStar는???????"+orderByStar);
			
			
			FilterParam filterParam = new FilterParam(tpo, season, lowPrice, highPrice, fabric, color, bodyType, shoulderType, armType, legType,
														orderByPrice, orderByHitcount, orderByStar);
			
			List<String> gsonListAll = null;
			try {
				gsonListAll = productService.convertToGson(productService.filter(filterParam));
			} catch (Exception e1) {
				
			}
			
			ArrayList<HashMap<String, Object>> jsonObjectList = new ArrayList<HashMap<String, Object>>();
			Gson gson = new Gson();
			JsonObject object = new JsonObject();
			if(gsonListAll!= null) {
				for(int i = 0 ; i < gsonListAll.size(); i++) {	
					HashMap<String, Object> convertToJson = gson.fromJson(gsonListAll.get(i), HashMap.class);
					jsonObjectList.add(convertToJson);
				}
			} else {
				try {
					out = response.getWriter();
					out.println("<img id=\"noResultImg\" src=\"/iceland/images/noResult.png\">");
					return null;
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			
			mav.addObject("gsonListAll", gsonListAll);
			mav.addObject("jsonObjectList", jsonObjectList);
			
			mav.setView("/ajax/ajax-product.jsp");
			return mav;
		}
}
