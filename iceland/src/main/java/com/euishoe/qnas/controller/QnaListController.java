package com.euishoe.qnas.controller;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.customers.service.CustomerService;
import com.euishoe.customers.service.CustomerServiceImpl;
import com.euishoe.qnas.dto.Qna;
import com.euishoe.qnas.service.QnaService;
import com.euishoe.qnas.service.QnaServiceImpl;
import com.euishoe.reviews.dto.Review;
import com.euishoe.reviews.service.ReviewService;
import com.euishoe.reviews.service.ReviewServiceImpl;

import kr.or.kosta.blog.common.web.Params;

/**
 * 조건 검색에 따른 qan list 처리를 위한 컨트롤러
 * @author 김기정
 *
 */
public class QnaListController implements Controller {
	
	QnaService qnaService;
	Params params;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		qnaService = (QnaService)factory.getBean(QnaServiceImpl.class);
		int productNum = (int) request.getAttribute("productNum");
		List<Qna> list = null;
		params = new Params(5, 5, 5, null, null);
		try {
			list = qnaService.qnaListAll(productNum);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mav.addObject("ReviewList", list);
		mav.setView("/product/details/product_details.jsp");
		return mav;
	}

}
