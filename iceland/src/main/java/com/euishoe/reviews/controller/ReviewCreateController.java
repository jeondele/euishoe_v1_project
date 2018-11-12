package com.euishoe.reviews.controller;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.reviews.dto.Review;
import com.euishoe.reviews.service.ReviewService;
import com.euishoe.reviews.service.ReviewServiceImpl;

/**
 * /user/list.mall에 대한 요청 처리 컨트롤러
 * @author 김기정
 *
 */
public class ReviewCreateController implements Controller {

	ReviewService reviewService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		reviewService = (ReviewService)factory.getBean(ReviewServiceImpl.class);
		

		
		String customerId = request.getParameter("customerId");
		String productNum = request.getParameter("productNum");
		String reviewContent = request.getParameter("reviewContent");
		String reviewScore = request.getParameter("reviewScore");
		String reviewPassword = request.getParameter("reviewPassword");
		
		System.out.println("1." + customerId);
		System.out.println("2." + productNum);
		System.out.println("3." + reviewContent);
		System.out.println("4." + reviewScore);
		System.out.println("5." + reviewPassword);
		
		Review review = new Review(customerId, Integer.parseInt(productNum), "", reviewContent, reviewPassword, Integer.parseInt(reviewScore));
		try {
			reviewService.create(review);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
