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
		
		return mav;
	}
}
