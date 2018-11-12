package com.euishoe.reviews.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.common.web.PageBuilder;
import com.euishoe.common.web.Params;
import com.euishoe.reviews.dto.Review;
import com.euishoe.reviews.service.ReviewService;
import com.euishoe.reviews.service.ReviewServiceImpl;
import com.google.gson.Gson;
import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
/**
 * 조건 검색에 따른 비동기 요청 처리 컨트롤러
 * @author 김기정
 *
 */
public class ReviewListController implements Controller{
	
	ReviewService reviewService;
	Params params;
	PageBuilder pageBuilder;
	Gson gson;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		reviewService = (ReviewService)factory.getBean(ReviewServiceImpl.class);
		response.setContentType("text/plain; charset=utf-8");
		
		String requestPage = request.getParameter("page");
		if(requestPage == null || requestPage.equals("")){
		  requestPage = "1";
		}
		String productNum = request.getParameter("productNum");
		List<Review> list = null;
		params = new Params(Integer.parseInt(requestPage), 5, 5, null, null);
		int rowCount = 0;
		String customerId = request.getParameter("customerId");
		int reviewScore = 0;
		String jsonData = null;
		System.out.println(customerId);
		System.out.println(reviewScore);
		PrintWriter out = null;
		try {
			list = reviewService.reviewDynamicReviewList(Integer.parseInt(productNum), customerId, reviewScore, params);
			rowCount = reviewService.countBySearch(Integer.parseInt(productNum));
			// PageBuilder를 이용하여 페이징 계산
			pageBuilder = new PageBuilder(params, rowCount);
			pageBuilder.build();
			jsonData = gson.toJson(list);
			out = response.getWriter();
			out.println(jsonData);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println("1." + gson.toJson(list));
			// 이메일보낸 코드값 반환
		return null;
}
}
