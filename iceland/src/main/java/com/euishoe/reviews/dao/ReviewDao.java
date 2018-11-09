package com.euishoe.reviews.dao;

import java.util.List;

import com.euishoe.points.dto.PointHistory;
import com.euishoe.reviews.dto.Review;

/**
 * 쇼핑몰 상품 상세페이지의 리뷰목록과 관련된 Dao 인터페이스
 * 
 * @author 전상일
 *
 */
public interface ReviewDao {
		
	//댓글 작성
	public void create() throws Exception;
	
	//조회
	public List<Review> reviewListAll(int productNum) throws Exception;
	
	//특정 댓글 조회(사용자)
	public List<Review> reviewListByCustomerId(int productNum, String customerId) throws Exception;
	
	//특정 댓글 조회(별점)
	public List<Review> reviewListByScore(int productNum, int reviewScore) throws Exception;
	
	//삭제
	public void deleteReview(int reviewNum) throws Exception;
}
