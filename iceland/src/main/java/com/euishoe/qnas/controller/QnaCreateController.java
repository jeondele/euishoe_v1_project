package com.euishoe.qnas.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.qnas.dto.Qna;
import com.euishoe.qnas.service.QnaService;
import com.euishoe.qnas.service.QnaServiceImpl;

/**
 * /user/list.mall에 대한 요청 처리 컨트롤러
 * @author 김기정
 *
 */
public class QnaCreateController implements Controller {

	QnaService qnaService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		qnaService = (QnaService)factory.getBean(QnaServiceImpl.class);
		

		
		String customerId = request.getParameter("customerId");
		String productNum = request.getParameter("productNum");
		String qnaContent = request.getParameter("qnaContent");
		String qnatitle = request.getParameter("qnatitle");
		String qnaPassword = request.getParameter("qnaPassword");
		String qnaIsLock = request.getParameter("qnaIsLock");
		String qnaTypeNum = request.getParameter("qnaTypeNum");
		
		System.out.println("1." + customerId);
		System.out.println("2." + productNum);
		System.out.println("3." + qnaContent);
		System.out.println("4." + qnatitle);
		System.out.println("5." + qnaPassword);
		System.out.println("6." + qnaTypeNum);
		System.out.println("7." + qnaIsLock);
		
		Qna qna = new Qna(Integer.parseInt(qnaTypeNum), customerId, Integer.parseInt(productNum), qnatitle, qnaContent, qnaPassword, qnaIsLock);
		try {
			qnaService.createQna(qna);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
