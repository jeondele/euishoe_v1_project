package com.euishoe.products.controller;

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

			//paramMapping 
			String tpo = request.getParameter("tpo");
			System.out.println("tpo는???????"+tpo);
			String season = request.getParameter("season");
			String price = request.getParameter("price");
			String lowPrice = null;
			String highPrice = null;
			if (price != null) {
				String[] priceValues = price.split("/");
				lowPrice = priceValues[0];
				highPrice = priceValues[1];
			}
			String fabric = request.getParameter("fabric");
			String color = request.getParameter("color");
			int bodyType = (request.getParameter("bodyType") == null) ? 0 : Integer.valueOf(request.getParameter("bodyType"));
			int shoulderType = (request.getParameter("shoulderType") == null) ? 0 : Integer.valueOf(request.getParameter("shoulderType"));
			int legType = (request.getParameter("shoulderType") == null) ? 0 : Integer.valueOf(request.getParameter("legType"));
			int armType = (request.getParameter("armType") == null) ? 0 : Integer.valueOf(request.getParameter("armType")); 
			String orderByPrice = request.getParameter("orderByPrice");
			String orderByHitcount = request.getParameter("orderByHitcount");
			String orderByStar = request.getParameter("orderByStar");
			
			System.out.println("season는???????"+season);
			System.out.println("price는???????"+price);
			System.out.println("lowprice는???????"+lowPrice);
			System.out.println("highprice는???????"+highPrice);
			System.out.println("fabric는???????"+fabric);
			System.out.println("color는???????"+color);
			System.out.println("bodyType는???????"+bodyType);
			System.out.println("shoulderType는???????"+shoulderType);
			System.out.println("legType는???????"+legType);
			System.out.println("armType는???????"+armType);
			System.out.println("orderByPrice는???????"+orderByPrice);
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
			
			for(int i = 0 ; i < gsonListAll.size(); i++) {	
				HashMap<String, Object> convertToJson = gson.fromJson(gsonListAll.get(i), HashMap.class);
				jsonObjectList.add(convertToJson);
		 	}
			
			mav.addObject("gsonListAll", gsonListAll);
			mav.addObject("jsonObjectList", jsonObjectList);
			
			mav.setView("/ajax/ajax-product.jsp");
			return mav;
		}
}
