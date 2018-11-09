package com.euishoe.reviews.service;
import java.util.List;

/**
 * 쇼핑몰 상품 상세페이지의 리뷰목록과 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */
import com.euishoe.reviews.dao.ReviewDao;
import com.euishoe.reviews.dto.Review;

public class ReviewServiceImpl implements ReviewService {
	ReviewDao reviewDao;

	public ReviewDao getReviewDao() {
		return reviewDao;
	}

	public void setReviewDao(ReviewDao reviewDao) {
		this.reviewDao = reviewDao;
	}

	@Override
	public Review create() throws Exception {
		return null;
	}

	@Override
	public List<Review> listAll() throws Exception {
		return null;
	}

	@Override
	public List<Review> CustomerPointList(String customerId) throws Exception {
		return null;
	}

	@Override
	public void deleteReview() throws Exception {
		
	}
}
