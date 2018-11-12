package com.euishoe.home.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.products.dto.ProductInfo;
import com.euishoe.products.service.ProductService;
import com.euishoe.products.service.ProductServiceImpl;
import com.euishoe.wishlists.service.WishlistService;
import com.google.gson.Gson;
import com.google.gson.JsonObject;


/**
 * 게시판에 대한 요청 처리 컨트롤러
 * @author 전상일
 *
 */
public class HomeController extends HttpServlet implements Controller  {
	WishlistService wishlistService;
	ProductService productService;
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		// 상품정보를 얻어오기위한 상품서비스객체 생성
		productService = (ProductService)factory.getBean(ProductServiceImpl.class);
		
		List<String> gsonNewListAll = null;
		List<String> gsonHitListAll = null;
		try {
			gsonNewListAll = productService.convertToGson(productService.newProductList());
			gsonHitListAll = productService.convertToGson(productService.hitProductList());
		} catch (Exception e1) {}
		
		ArrayList<HashMap<String, Object>> jsonObjectNewList = new ArrayList<HashMap<String, Object>>();
		ArrayList<HashMap<String, Object>> jsonObjectHitList = new ArrayList<HashMap<String, Object>>();
		Gson gson = new Gson();
		JsonObject object = new JsonObject();
		
		if(gsonNewListAll != null) {
			for(int i = 0 ; i < gsonNewListAll.size(); i++) {	
				HashMap<String, Object> convertToJson = gson.fromJson(gsonNewListAll.get(i), HashMap.class);
				jsonObjectNewList.add(convertToJson);
		 	}
		}
		
		if(gsonHitListAll != null) {
			for(int i = 0 ; i < gsonHitListAll.size(); i++) {	
				HashMap<String, Object> convertToJson = gson.fromJson(gsonHitListAll.get(i), HashMap.class);
				jsonObjectHitList.add(convertToJson);
		 	}
		}
		
		try {
			mav.addObject("newProductSrc", jsonObjectNewList);
			mav.addObject("hitProductSrc", jsonObjectHitList);
			mav.addObject("gsonNewProductSrc", gsonNewListAll);
			mav.addObject("gsonHitProductSrc", gsonHitListAll);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mav.setView("home.jsp");
		return mav;
	}
}
