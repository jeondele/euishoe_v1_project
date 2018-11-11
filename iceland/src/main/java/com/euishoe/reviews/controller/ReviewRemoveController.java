package com.euishoe.reviews.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.reviews.service.ReviewService;
import com.euishoe.reviews.service.ReviewServiceImpl;

/**
 * /user/list.mall에 대한 로그아웃 요청 처리 컨트롤러
 * @author 김기정
 *
 */
public class ReviewRemoveController implements Controller {

	ReviewService reviewService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		reviewService = (ReviewService)factory.getBean(ReviewServiceImpl.class);
		String reviewNum = request.getParameter("reviewNum");
		try {
			reviewService.deleteReview(Integer.parseInt(reviewNum));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		mav.setView("redirect:/iceland/product/details/product-detail.jsp");
		return mav;
	}

}
