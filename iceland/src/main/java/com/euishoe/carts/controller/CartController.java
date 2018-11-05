package com.euishoe.carts.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.carts.service.CartService;
import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;

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
		return mav;
	}
}
