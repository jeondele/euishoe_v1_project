package com.euishoe.carts.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpUtils;

import com.euishoe.carts.service.CartService;
import com.euishoe.carts.service.CartServiceImpl;
import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.google.gson.Gson;

/**
 * 장바구니에 대한 요청 처리 컨트롤러
 * @author 전상일
 *
 */
public class CartController implements Controller {
	//추후 생각 (임시 컨트롤러)
	private CartService cartService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		cartService = (CartService)factory.getBean(CartServiceImpl.class);
		
		List<HashMap<String,Object>>list = cartService.listCart();
		
		
		HashMap hashmap = new HashMap<String,String>();
		for (HashMap<String, Object> hash : list) {
			hashmap.put("image_ref", hash.get("image_ref"));
			hashmap.put("PRODUCT_NAME", hash.get("PRODUCT_NAME"));
			hashmap.put("product_count", hash.get("product_count"));
			hashmap.put("PRODUCT_PRICE", hash.get("PRODUCT_PRICE"));
			
			System.out.println("product_count : "  + hashmap.get("product_count"));
			System.out.println("PRODUCT_PRICE : "  + hashmap.get("PRODUCT_PRICE"));
		}

		Gson gson = new Gson();
		String json = "";
		try {
			json = URLEncoder.encode(gson.toJson(hashmap).trim(), "utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Cookie cookie = new Cookie("carts", gson.toJson(hashmap));
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		
		cookie.setMaxAge(60 * 60 * 24 * 1000);
		cookie.setPath("/iceland/");
		response.addCookie(cookie);
		
		mav.addObject("carts", cookie);
		
		return mav;
	}
}
