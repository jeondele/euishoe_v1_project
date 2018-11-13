package com.euishoe.reviews.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.common.web.PageBuilder;
import com.euishoe.common.web.Params;
import com.euishoe.reviews.service.ReviewService;
import com.euishoe.reviews.service.ReviewServiceImpl;
import com.google.gson.Gson;

/**
 * 조건 검색에 따른 비동기 요청 처리 컨트롤러
 * 
 * @author 김기정
 *
 */
public class ReviewListController implements Controller {

	ReviewService reviewService;
	Params params;
	PageBuilder pageBuilder;
	Gson gson;

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		XMLObjectFactory factory = (XMLObjectFactory) request.getServletContext().getAttribute("objectFactory");
		reviewService = (ReviewService) factory.getBean(ReviewServiceImpl.class);
		response.setContentType("text/plain; charset=utf-8");
		String requestPage = request.getParameter("page");
		if (requestPage == null || requestPage.equals("")) {
			requestPage = "1";
		}
		String productNum = request.getParameter("productNum");
		String customerId = request.getParameter("customerId");
		int reviewScore = 0;
		params = new Params(Integer.parseInt(requestPage), 5, 5, null, null);
		List<HashMap<String, Object>> list = null;
		int rowCount = 0;
		String jsonData = "";
		PrintWriter out = null;
		StringBuffer sb = new StringBuffer();
		
		try {
			request.setCharacterEncoding("utf-8");
			list = reviewService.reviewDynamicReviewList(Integer.parseInt(productNum), customerId, reviewScore, params);
			rowCount = reviewService.countBySearch(Integer.parseInt(productNum));
			System.out.println(list);
			pageBuilder = new PageBuilder(params, rowCount);
			pageBuilder.build();
			Gson gson = new Gson();
			JSONObject jsonObj = new JSONObject();
			out = response.getWriter();
			for (HashMap<String, Object> hashMap : list) {
				jsonObj.put("reviewNum", hashMap.get("REVIEW_NUM"));
				jsonObj.put("customerId", hashMap.get("CUSTOMER_ID"));
				jsonObj.put("reviewNum", hashMap.get("PRODUCT_NUM"));
				jsonObj.put("reviewTitle", hashMap.get("REVIEW_TITLE"));
				jsonObj.put("reviewContent", hashMap.get("REVIEW_CONTENT"));
				jsonObj.put("reviewPassword", hashMap.get("REVIEW_PASSWORD"));
				jsonObj.put("reviewScore", hashMap.get("REVIEW_SCORE"));
				jsonObj.put("reviewIsdeleted", hashMap.get("REVIEW_ISDELETED"));
				jsonObj.put("reviewIsanswered", hashMap.get("REVIEW_ISANSWERED"));
				jsonObj.put("reviewRegdate", hashMap.get("REVIEW_REGDATE"));

				jsonData = jsonObj.toJSONString();
				System.out.println("프론트로 보내줄 jsonData: "+jsonData);
				jsonData = jsonData + ",";
				sb.append(jsonData);
			}
			
			request.setAttribute("jsonData", jsonData);
			out.print(sb.toString());
		}catch (Exception e) {
		}
		out.flush();
		out.close();
		return mav;
	}
}