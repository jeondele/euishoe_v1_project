package com.euishoe.products.controller;

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
			int productNum = (int)request.getAttribute("productNum");
			XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
			productService = (ProductService)factory.getBean(ProductServiceImpl.class);
			
			List<ProductInfo> productInfoList = null;
			List<String> imageList = null;
			try {
				productInfoList = productService.selectProductInfoByProductNum(productNum);
				imageList = productService.selectImageRefByProductNum(productNum);
			} catch (Exception e) {}
			mav.addObject("productInfoList", productInfoList);
			mav.addObject("imageList", imageList);
			mav.setView("/product/product.jsp");
			return mav;
		}
}
