package com.euishoe.common.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * 요청파라메터 한글인코딩 처리 필터
 * @author 전상일
 *
 */
public class CharacterEncodingFilter implements Filter {
	
	private String encoding;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		//필터 실행시 web.xml에 등록된 encoding param값 가져오기
		encoding = filterConfig.getInitParameter("encoding");
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// 전처리
		if(encoding != null){
			//request가 들어올 때마다 encoding 실행
			request.setCharacterEncoding(encoding);
		}
		//encoding 후 필터체인의 다음 필터 실행으로 넘어감
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {	}
}
