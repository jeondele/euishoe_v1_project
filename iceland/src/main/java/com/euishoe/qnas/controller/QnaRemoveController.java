package com.euishoe.qnas.controller;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.customers.dto.Customer;
import com.euishoe.customers.service.CustomerService;
import com.euishoe.customers.service.CustomerServiceImpl;
import com.euishoe.qnas.service.QnaService;
import com.euishoe.qnas.service.QnaServiceImpl;

/**
 * /user/list.mall에 대한 로그아웃 요청 처리 컨트롤러
 * @author 김기정
 *
 */
public class QnaRemoveController implements Controller {

	QnaService qnaService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		qnaService = (QnaService)factory.getBean(QnaServiceImpl.class);
		
		String qnaNum = request.getParameter("qnaNum");
		try {
			qnaService.deleteQna(Integer.parseInt(qnaNum));
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mav.setView("redirect:/iceland/index.jsp");
		return mav;
	}

}
