package com.euishoe.home.controller;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.products.dto.ProductInfo;
import com.euishoe.wishlists.dto.Wishlist;
import com.euishoe.wishlists.service.WishlistService;
import com.euishoe.wishlists.service.WishlistServiceImpl;

/**
 * 게시판에 대한 요청 처리 컨트롤러
 * @author 전상일
 *
 */
public class HomeController extends HttpServlet implements Controller  {
	WishlistService wishlistService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		System.out.println("언제들어오냥???:::homecontroller");
		ModelAndView mav = new ModelAndView();
		List<ProductInfo> list = null;
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		wishlistService = (WishlistService)factory.getBean(WishlistServiceImpl.class);
		try {
			list = wishlistService.selectWishlists("bangry");
		} catch (Exception e) {}
		mav.addObject("wishlists", list);
		mav.setView("index.jsp");
		return mav;
	}
}
