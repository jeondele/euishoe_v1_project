package com.euishoe.reviews.service;
/**
 * 쇼핑몰 상품 상세페이지의 리뷰목록과 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */
import com.euishoe.reviews.dao.ReviewDao;

public class ReviewServiceImpl implements ReviewService {
	ReviewDao reviewDao;

	public ReviewDao getReviewDao() {
		return reviewDao;
	}

	public void setReviewDao(ReviewDao reviewDao) {
		this.reviewDao = reviewDao;
	}
}
