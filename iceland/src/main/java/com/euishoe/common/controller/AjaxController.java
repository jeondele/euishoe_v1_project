package com.euishoe.common.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 모든 세부 컨트롤러에 대한 실행 메소드 규약 선언 - 커맨드패턴 적용
 * @author 전상일
 *
 */
public interface AjaxController {
	
	/** 실행 규약 메소드 */
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException;
	
}