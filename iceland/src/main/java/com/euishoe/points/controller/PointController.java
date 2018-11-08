package com.euishoe.points.controller;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.points.dto.PointHistory;
import com.euishoe.points.service.PointService;
import com.euishoe.points.service.PointServiceImpl;


/**
 * /user/list.mall에 대한 요청 처리 컨트롤러
 * @author 김기정
 *
 */
public class PointController implements Controller {
	
	PointService pointService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		pointService = (PointService)factory.getBean(PointServiceImpl.class);
		


		List<PointHistory> list = null;
		Cookie[] cookies = request.getCookies();
		try {
			for(Cookie cookie : cookies){
			    if(cookie.getName().equals("loginId")) {
					list = pointService.CustomerPointList(cookie.getValue());
			    }
			} 
		} catch (Exception e) {
			throw new ServletException("UserService.list() 예외 발생", e);
		}
		mav.addObject("CustomerPointList", list);
		mav.setView("/mypage/myPoint.jsp");
		
		return mav;
	}

}
