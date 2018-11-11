package com.euishoe.comments.controller;

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

/**
 * /user/list.mall에 대한 요청 처리 컨트롤러
 * @author 김기정
 *
 */
public class CommentCreateController implements Controller {

	CustomerService customerService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		
		//입력받은 이메일값
		String email = request.getParameter("emailAdd");
		// 이메일인증번호
		String subject = "[euishoe]회원가입 이메일 인증 안내";
		String certifyCode = createCode();
		String msg = "";
		msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
		msg += "<h3 style='color:blue;'>회원가입 이메일 인증코드 입니다.</h3>";
		msg += "<div style='font-size:130%'>";
		msg += "회원가입 페이지로 돌아가 인증코드 <strong>";
		msg += certifyCode + "</strong>를 입력해 주세요.</div><br/>";
		
		try {
			sendEmail(email, subject, msg);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}		
		
		response.setContentType("text/plain; charset=utf-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
			// 이메일보낸 코드값 반환
			out.println(certifyCode);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
//		mav.setView("/customer/login/login.jsp");
		return null;
	}

	// 인증메일을 보내주는 메소드
	private void sendEmail(String email, String subject, String msg) throws Exception {
		// mail Server설정
		System.out.println("send mail들어옴!!!!!!!!!!!!!!");
		String charSet = "utf-8";
		String hostSMTP = "smtp.naver.com";			// smtp서버명
		String hostSMTPid = "siwon9311@naver.com";	// 보낼 메일계정
		String hostSMTPpw = "Coolpark93!@"; 		// 메일계정비번
		
		String fromEmail = "siwon9311@naver.com";
		String fromName = "의슈트";
		
		// email전송
		try {
			HtmlEmail mail = new HtmlEmail();
			mail.setDebug(true);
			mail.setCharset(charSet);
			mail.setSSLOnConnect(true); // ssl사용(tls없는경우 ssl사용)
			mail.setHostName(hostSMTP);
			mail.setSmtpPort(993);		// smtp 포트번호
			
			mail.setAuthentication(hostSMTPid, hostSMTPpw);
			mail.setStartTLSEnabled(true); // tls사용
			mail.addTo(email); // 입력받은 email
			mail.setFrom(fromEmail, fromName, charSet);
			mail.setSubject(subject);
			mail.setHtmlMsg(msg);
			mail.send();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 인증코드 난수생성 메소드
	private String createCode() {
		//StringBuffer code = new StringBuffer();
		String code="";
		Random random = new Random();
		
		for(int i=0; i<5; i++) {
			int idx = random.nextInt(10);
			code += idx;
		}
		return code;
	}
}
