package com.euishoe.reviews.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.common.web.Params;
import com.euishoe.reviews.dao.MybatisReviewDao;
import com.euishoe.reviews.dto.Review;

public class ReviewSearchController extends HttpServlet {
	Params params;
	MybatisReviewDao reviewDao;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String requestPage = request.getParameter("page");
		if(requestPage == null || requestPage.equals("")){
		  requestPage = "1";
		}
		
		String productNum = request.getParameter("productNum");
		String customerId = request.getParameter("customerId");
		params = new Params(Integer.parseInt(requestPage), 5, 5, null, null);
		int rowCount = 0;
		int reviewScore = 0;
		String jsonData = null;

		response.getWriter().write(getJson(customerId, Integer.parseInt(productNum), reviewScore, params));
}
	
	public String getJson(String customerId, int productNum, int reviewScore, Params params) {
		reviewDao = new MybatisReviewDao();
		StringBuffer result = new StringBuffer("");
		result.append("{\"result\":[");
		
		try {
			ArrayList<Review> list = (ArrayList<Review>) reviewDao.reviewDynamicReviewList(productNum, customerId, reviewScore, params);
			for (int i = 0; i < list.size(); i++) {
				result.append("[{\"value\": \"" + list.get(i).getCustomerId() + "\"},");
				result.append("{\"value\": \"" + list.get(i).getReviewContent() + "\"},");
				result.append("{\"value\": \"" + list.get(i).getReviewNum() + "\"},");
				result.append("{\"value\": \"" + list.get(i).getReviewRegdate() + "\"},");
				result.append("{\"value\": \"" + list.get(i).getReviewScore() + "\"},");
				result.append("{\"value\": \"" + list.get(i).getReviewTitle() + "\"},");
				result.append("{\"value\": \"" + list.get(i).getProductNum() + "\"},");
				result.append("{\"value\": \"" + list.get(i).getReviewIsAnswered() + "\"}],");
			}
			result.append("]}");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result.toString();
	}
	
	
	
}

