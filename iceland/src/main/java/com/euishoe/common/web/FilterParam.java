package com.euishoe.common.web;

/**
 * 여러개의 전달인자들을 포장하기 위한 Wrapper 클래스
 * {사용자 선택페이지, 한페이지에 출력하는 행의 개수, 출력 페이지 개수, 검색유형, 검색값 등}
 *  
 * @author 김기정
 */
public class FilterParam {
	private String tpo;
	private String season;
	private String[] price;  
}
