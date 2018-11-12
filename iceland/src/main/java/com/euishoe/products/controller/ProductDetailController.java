package com.euishoe.products.controller;

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
import com.euishoe.reviews.dto.Review;

import kr.or.kosta.blog.common.web.Params;

/**
 * /user/list.mall에 대한 요청 처리 컨트롤러
 * @author 김기정
 *
 */
public class ProductDetailController implements Controller {
	
	ProductService productService;
	Params params;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		productService = (ProductService)factory.getBean(ProductServiceImpl.class);
		String productNum = request.getParameter("productNum");
		List<Map<String, Object>> list = null;
		try {
			list = productService.selectAllById(Integer.valueOf(productNum));
		} catch (Exception e) {}
		
		/*int productNum = 2;
		//int productNum = (int) request.getAttribute("productNum");
		String qnaisLock = (String)request.getAttribute("qnaisLock");
		String customerId = (String)request.getAttribute("customerId");
		int typeNum = (int)request.getAttribute("typeNum");
		int reviewScore = (int)request.getAttribute("reviewScore");
		
		List<Review> reviewlist = null;
		List<Map<String, Object>> qnalist = null;
		params = new Params(1, 5, 1, null, null);
		try {
			reviewlist = productService.reviewDynamicReviewList(productNum, customerId, reviewScore, params);
			qnalist = productService.qnaDynamicListAll(productNum, qnaisLock, customerId, typeNum, params);
			
			System.out.println("1." + reviewlist);
			System.out.println("2." + qnalist);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mav.addObject("ReviewList", reviewlist);
		mav.addObject("QnaList", qnalist);*/
		System.out.println(list);
		mav.addObject("selectAllById", list);
		mav.setView("/product/details/product-detail.jsp");
		return mav;
	}
}
