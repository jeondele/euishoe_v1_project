package com.euishoe.home.controller;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.products.dto.ProductInfo;
import com.euishoe.products.service.ProductService;
import com.euishoe.products.service.ProductServiceImpl;

/**
 * 게시판에 대한 요청 처리 컨트롤러
 * @author 전상일
 *
 */
public class HomeController implements Controller {
	ProductService productService;
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		// 상품정보를 얻어오기위한 상품서비스객체 생성
		productService = (ProductService)factory.getBean(ProductServiceImpl.class);
		// 신상품정보list
		List<ProductInfo> newProductSrc = null;
		// 히트상품정보list
		List<ProductInfo> hitProductSrc = null;
		try {
			newProductSrc = productService.newProductList();
			hitProductSrc = productService.hitProductList();
			mav.addObject("newProductSrc", newProductSrc);
			mav.addObject("hitProductSrc", hitProductSrc);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mav.setView("index.jsp");
		
		return mav;
	}
}
