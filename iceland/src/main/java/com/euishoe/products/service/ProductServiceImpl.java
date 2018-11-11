package com.euishoe.products.service;
/**
 * 쇼핑몰 상품과 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */

import java.util.List;

import com.euishoe.products.dao.ProductDao;
import com.euishoe.products.dto.ProductInfo;
import com.euishoe.qnas.dao.QnaDao;
import com.euishoe.qnas.dto.Qna;
import com.euishoe.reviews.dao.ReviewDao;
import com.euishoe.reviews.dto.Review;

import kr.or.kosta.blog.common.web.Params;

public class ProductServiceImpl implements ProductService {
	private ProductDao productDao;
	private ReviewDao reviewDao;
	private QnaDao qnaDao;

	public ProductDao getProductDao() {
		return productDao;
	}

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	
	public ReviewDao getReviewDao() {
		return reviewDao;
	}

	public void setReviewDao(ReviewDao reviewDao) {
		this.reviewDao = reviewDao;
	}

	public QnaDao getQnaDao() {
		return qnaDao;
	}

	public void setQnaDao(QnaDao qnaDao) {
		this.qnaDao = qnaDao;
	}

	@Override
	public List<ProductInfo> newProductList() throws Exception {
		return productDao.newProductList();
	}

	@Override
	public List<ProductInfo> hitProductList() throws Exception {
		return productDao.hitProductList();
	}

	@Override
	public List<ProductInfo> selectAll() throws Exception {
		return productDao.selectAll();
	}

	@Override
	public List<Review> reviewListAll(int productNum, Params params) throws Exception {
		return reviewDao.reviewListAll(productNum, params);
	}

	@Override
	public List<Qna> qnaListAll(int productNum) throws Exception {
		return qnaDao.qnaListAll(productNum);
	}
	
	
}
