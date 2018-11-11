package com.euishoe.products.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
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
			
			List<Map<String,Object>> list = null;
			List<String> gsonListAll = null;
			try {
				gsonListAll = productService.convertToGson(productService.selectAll());
			} catch (Exception e1) {
			}
			ArrayList<HashMap<String, Object>> jsonObjectList = new ArrayList<HashMap<String, Object>>();
			Gson gson = new Gson();
			JsonObject object = new JsonObject();
			
			for(int i = 0 ; i < gsonListAll.size(); i++) {	
				HashMap<String, Object> convertToJson = gson.fromJson(gsonListAll.get(i), HashMap.class);
				jsonObjectList.add(convertToJson);
		 	}
			try {
				list = productService.selectAll2();
			} catch (Exception e) {}
			
			mav.addObject("gsonListAll", gsonListAll);
			mav.addObject("jsonObjectList", jsonObjectList);
			mav.setView("/product/product.jsp");
			return mav;
		}
}
