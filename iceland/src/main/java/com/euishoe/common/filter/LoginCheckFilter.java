package com.euishoe.common.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
/**
 * 사용자 로그인 여부 체크 필터
 * 
 * @author 전상일
 *
 */
public class LoginCheckFilter implements Filter {
	
	private Logger logger = Logger.getLogger(LoginCheckFilter.class);
	private String loginPage;

    @Override
	public void init(FilterConfig filterConfig) throws ServletException {
    	//필터 실행시 web.xml에 등록된 로그인페이지 param값 가져오기
    	loginPage = filterConfig.getInitParameter("loginPage");
	}

    @Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
    	logger.debug("LoginCheckFiler 실행..");
		boolean isLogin = false;
		//쿠키값들 중에 로그인 관련 쿠키가 있는 지 체크
		Cookie[] cookies = ((HttpServletRequest)request).getCookies();
		if(cookies != null) {
			for (Cookie cookie : cookies) {
				if(cookie.getName().equals("loginId")) {
					isLogin = true;
					break;
				}
			}
		}
		
		//로그인 관련 쿠키가 있으면
		if(isLogin) {
			//다음 필터체인으로 이동
			chain.doFilter(request, response);
		}else {
			if(loginPage == null) {
				//로그인 관련 쿠키가 없는데 로그인 페이지도 없으면 익셉션
				throw new ServletException("LoginCheckFilter에 loginPage가 설정되어 있지 않습니다.");
			}
			//로그인 페이지로 포워드 시, request에 요청 uri 저장
			request.setAttribute("uri", ((HttpServletRequest)request).getRequestURI());
			request.getServletContext().getRequestDispatcher(loginPage).forward(request, response);
		}
	}
    
    @Override
	public void destroy() {}

}
