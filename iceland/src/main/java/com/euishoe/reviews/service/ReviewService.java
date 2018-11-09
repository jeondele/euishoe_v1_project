package com.euishoe.reviews.service;

import java.util.List;

import com.euishoe.reviews.dto.Review;

/**
 * 쇼핑몰  상품 상세페이지의 리뷰목록과 관련된 서비스 인터페이스
 * 
 * @author 전상일
 *
 */
public interface ReviewService {

	//댓글 작성
	public Review create() throws Exception;
	
	//조회
	public List<Review> listAll() throws Exception;
	
	//특정 댓글 조회
	public List<Review> CustomerPointList(String customerId) throws Exception;
	
	//삭제
	public void deleteReview() throws Exception;
}
