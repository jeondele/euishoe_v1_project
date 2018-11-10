package com.euishoe.reviews.service;

import java.util.List;

import com.euishoe.reviews.dto.Review;

import kr.or.kosta.blog.common.web.Params;

/**
 * 쇼핑몰  상품 상세페이지의 리뷰목록과 관련된 서비스 인터페이스
 * 
 * @author 전상일
 *
 */
public interface ReviewService {

	//댓글 작성
	public void create() throws Exception;
	
	//조회
	public List<Review> listAll(int productNum, Params params) throws Exception;
	
	//특정 댓글 조회(사용자)
	public List<Review> reviewListByCustomerId(int productNum, String customerId, Params params) throws Exception;
		
	//특정 댓글 조회(별점)
	public List<Review> reviewListByScore(int productNum, int reviewScore, Params params) throws Exception;
		
	//삭제
	public void deleteReview(int reviewNum) throws Exception;
	
	//조회 목록 개수
	public int countBySearch(int productNum, Params params) throws Exception;
}
