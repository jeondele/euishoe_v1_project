package com.euishoe.products.service;

import java.util.List;
import java.util.Map;
import com.euishoe.products.dto.ProductInfo;
import com.euishoe.reviews.dto.Review;
import kr.or.kosta.blog.common.web.Params;

/**
 * 쇼핑몰 상품과 관련된 서비스 인터페이스
 * 
 * @author 전상일
 *
 */
public interface ProductService {
	// 최신상품4개 상품정보와 이미지 get
	public List<ProductInfo> newProductList() throws Exception;
	
	// 히트상품4개 상품정보와 이미지 get
	public List<ProductInfo> hitProductList() throws Exception;
	
	// 전체리스트 출력
	public List<ProductInfo> selectAll() throws Exception;
	
	//리뷰 조회
	public List<Review> reviewListAll(int productNum, Params params) throws Exception;
	
	//제품 문의글 전체 조회
	List<Map<String, Object>> qnaDynamicListAll(int productNum, String qnaisLock, String customerId, int TypeNum, Params params) throws Exception;
	
}
