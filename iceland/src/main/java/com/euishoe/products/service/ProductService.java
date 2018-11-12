package com.euishoe.products.service;

import java.util.List;
import java.util.Map;

import com.euishoe.products.dto.Product;
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
	public List<Map<String, Object>> newProductList() throws Exception;
	// 히트상품4개 상품정보와 이미지 get
	public List<Map<String, Object>> hitProductList() throws Exception;
	//public List<ProductInfo> newProductList() throws Exception;
	
	// 히트상품4개 상품정보와 이미지 get
	//public List<ProductInfo> hitProductList() throws Exception;
	
	// 전체리스트 출력
	public List<Map<String, Object>> selectAll() throws Exception;
	
	//리뷰 조회
	public List<Review> reviewListAll(int productNum, Params params) throws Exception;
	
	//제품 문의글 전체 조회
	List<Map<String, Object>> qnaDynamicListAll(int productNum, String qnaisLock, String customerId, int TypeNum, Params params) throws Exception;
	
	public List<Map<String, Object>> selectAll2() throws Exception;
	// 해당 상품번호에 해당하는 이미치 주소 리스트 출력
	public List<String> selectImageRefByProductNum(int productNum) throws Exception;
	// 해당 상품번호에 해당하는 정보 출력
	public List<ProductInfo> selectProductInfoByProductNum(int productNum) throws Exception;
	// Gson으로 바꾸는 메소드
	public List<String> convertToGson(List<Map<String, Object>> list);
	
	public List<Map<String, Object>> selectAllById(int productNum) throws Exception;
}
