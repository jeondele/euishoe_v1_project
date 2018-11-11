package com.euishoe.products.controller;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.comments.service.CommentService;
import com.euishoe.comments.service.CommentServiceImpl;
import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.products.service.ProductService;
import com.euishoe.products.service.ProductServiceImpl;
import com.euishoe.qnas.dto.Qna;
import com.euishoe.qnas.service.QnaService;
import com.euishoe.qnas.service.QnaServiceImpl;
import com.euishoe.reviews.dto.Review;
import com.euishoe.reviews.service.ReviewService;
import com.euishoe.reviews.service.ReviewServiceImpl;

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
		
		int productNum = 2;
		//int productNum = (int) request.getAttribute("productNum");
		List<Review> reviewlist = null;
		List<Qna> qnalist = null;
		params = new Params(1, 5, 1, null, null);
		
		try {
			reviewlist = productService.reviewListAll(productNum, params);
			qnalist = productService.qnaListAll(productNum);
			
			System.out.println("1." + reviewlist);
			System.out.println("2." + qnalist);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mav.addObject("ReviewList", reviewlist);
		mav.addObject("QnaList", qnalist);
		mav.setView("/product/details/product-detail.jsp");
		return mav;
	}
}
