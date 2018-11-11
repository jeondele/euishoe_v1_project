package com.euishoe.reviews.controller;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.common.controller.AjaxController;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.reviews.dto.Review;
import com.euishoe.reviews.service.ReviewService;
import com.euishoe.reviews.service.ReviewServiceImpl;
import kr.or.kosta.blog.common.web.Params;

/**
 * 조건 검색에 따른 비동기 요청 처리 컨트롤러
 * @author 김기정
 *
 */
public class ReviewListController implements AjaxController {
	
	ReviewService reviewService;
	Params params;
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		reviewService = (ReviewService)factory.getBean(ReviewServiceImpl.class);
		int productNum = (int) request.getAttribute("productNum");
		List<Review> list = null;
		params = new Params(5, 5, 5, null, null);
		try {
			list = reviewService.reviewListAll(productNum, params);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
