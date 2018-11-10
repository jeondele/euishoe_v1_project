package com.euishoe.customers.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.customers.service.CustomerService;
import com.euishoe.customers.service.CustomerServiceImpl;
import com.euishoe.points.dto.PointHistory;
import com.euishoe.points.service.PointService;
import com.euishoe.points.service.PointServiceImpl;
import com.euishoe.reviews.dto.Review;

/**
 * /user/list.mall에 대한 요청 처리 컨트롤러
 * @author 김기정
 *
 */
public class CustomerPointController implements Controller {
	
	CustomerService customerService;
	PointService pointService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		customerService = (CustomerService)factory.getBean(CustomerServiceImpl.class);
		pointService = (PointService)factory.getBean(PointServiceImpl.class);
		
		List<HashMap<String, Object>> list = null;
		Cookie[] cookies = request.getCookies();
		try {
			for(Cookie cookie : cookies){
			    if(cookie.getName().equals("loginId")) {
					list = pointService.CustomerPointList(cookie.getValue());
			    }
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
		mav.addObject("pointHistoryList", list);
		mav.setView("/customer/mypage/myPoint.jsp");
		return mav;
	}

}
