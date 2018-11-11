package com.euishoe.qnas.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;

import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.customers.dto.Customer;
import com.euishoe.customers.service.CustomerService;
import com.euishoe.customers.service.CustomerServiceImpl;
import com.euishoe.qnas.dto.Qna;
import com.euishoe.qnas.service.QnaService;

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
		
		
		
		int typeNum = 1;
		String customerId = "bangry";
		// 이메일인증번호
		int productNum = 2;
		String qnaContent = "문의글 테스트";
		
		//입력받은 이메일값
		String email = request.getParameter("emailAdd");
		
		//qnaDtlsCd, brdInfoCont
		
		try {
			qnaService.createQna(typeNum, customerId, productNum, qnaContent, 1);
			System.out.println("문의글 생성완료");
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}		
		return null;
	}
}
