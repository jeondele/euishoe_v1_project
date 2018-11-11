package com.euishoe.reviews.controller;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.common.controller.AjaxController;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.reviews.dto.Review;
import com.euishoe.reviews.service.ReviewService;
import com.euishoe.reviews.service.ReviewServiceImpl;

import kr.or.kosta.blog.common.web.PageBuilder;
import kr.or.kosta.blog.common.web.Params;

/**
 * 조건 검색에 따른 비동기 요청 처리 컨트롤러
 * @author 김기정
 *
 */
public class ReviewListController implements AjaxController {
	
	ReviewService reviewService;
	Params params;
	PageBuilder pageBuilder;
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		reviewService = (ReviewService)factory.getBean(ReviewServiceImpl.class);
		
		
		String requestPage = request.getParameter("page");
		if(requestPage == null || requestPage.equals("")){
		  requestPage = "1";
		}
		int productNum = (int) request.getAttribute("productNum");
		List<Review> list = null;
		params = new Params(Integer.parseInt(requestPage), 5, 5, null, null);
		int rowCount = 0;
		String customerId = (String)request.getAttribute("customerId");
		int reviewScore = (int)request.getAttribute("reviewScore");
		// PageBuilder를 이용하여 페이징 계산
		try {
			list = reviewService.reviewDynamicReviewList(productNum, customerId, reviewScore, params);
			rowCount = reviewService.countBySearch(productNum);
			pageBuilder = new PageBuilder(params, rowCount);
			pageBuilder.build();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
