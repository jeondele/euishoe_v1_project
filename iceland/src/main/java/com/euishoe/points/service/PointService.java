package com.euishoe.points.service;

import java.util.List;

import com.euishoe.points.dto.PointHistory;

/**
 * 쇼핑몰 포인트와 관련된 서비스 인터페이스
 * 
 * @author 전상일
 *
 */
public interface PointService {

	//포인트 생성
		public void create(String customerId) throws Exception;
		
		//회원별 포인트 지급내역
		public List<PointHistory> CustomerPointList(String customerId) throws Exception;
	
}
