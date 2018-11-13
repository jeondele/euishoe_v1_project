package com.euishoe.reviews.service;
import java.util.List;

import com.euishoe.common.web.Params;
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
	public void create(Review review) throws Exception {
		reviewDao.create(review);
	}

	@Override
	public void deleteReview(int reviewNum) throws Exception {
		reviewDao.deleteReview(reviewNum);
	}


	@Override
	public List<Review> reviewDynamicReviewList(int productNum, String customerId, int reviewScore, Params params) throws Exception {
		return reviewDao.reviewDynamicReviewList(productNum, customerId, reviewScore, params);
	}

	@Override
	public List<Review> reviewListByCustomerId(int productNum, String customerId, Params params) throws Exception {
		return reviewDao.reviewListByCustomerId(productNum, customerId, params);
	}

	@Override
	public List<Review> reviewListByScore(int productNum, int reviewScore, Params params) throws Exception {
		return reviewDao.reviewListByScore(productNum, reviewScore, params);
	}

	@Override
	public int countBySearch(int productNum) throws Exception {
		// TODO Auto-generated method stub
		return reviewDao.countBySearch(productNum);
	}

}
