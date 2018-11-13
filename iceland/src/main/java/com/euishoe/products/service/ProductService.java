package com.euishoe.products.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.euishoe.common.web.FilterParam;
import com.euishoe.common.web.Params;
import com.euishoe.products.dto.Product;
import com.euishoe.products.dto.ProductInfo;
import com.euishoe.reviews.dto.Review;

/**
 * 쇼핑몰 상품과 관련된 서비스 인터페이스
 * 
 * @author 전상일
 *
 */
public interface ProductService {
	// 신상4개제품 정보와 이미지위치 get(메인화면에 뿌려줄것)
	public List<Map<String, Object>> newProductList() throws Exception;

	// 히트제품 4개 정보와 이미지 위치 get(메인화면에 뿌려줄것)
	public List<Map<String, Object>> hitProductList() throws Exception;
	
	// 주문시 product객체 생성
	public String create(Product product) throws Exception;
	
	// 상품 전체리스트 출력
	public List<Map<String, Object>> selectAll() throws Exception;
	
	public List<Map<String, Object>> selectAll2() throws Exception;
	// 해당 상품번호에 해당하는 이미치 주소 리스트 출력
	public List<String> selectImageRefByProductNum(int productNum) throws Exception;
	// 해당 상품번호에 해당하는 정보 출력
	public List<ProductInfo> selectProductInfoByProductNum(int productNum) throws Exception;
	// Gson으로 바꾸는 메소드
	public List<String> convertToGson(List<Map<String, Object>> list);
	
	//제품 리뷰 전체 조회
	public List<HashMap<String,Object>> reviewDynamicReviewList(int productNum, String customerId, int reviewScore) throws Exception;
	
	//제품 문의글 전체 조회
	List<HashMap<String, Object>> qnaDynamicListAll(int productNum, String qnaisLock, String customerId, int TypeNum) throws Exception;
	
	//댓글 전체 조회
	List<HashMap<String, Object>> readComment(int productNum) throws Exception;
		
	public List<Map<String, Object>> selectAllById(int productNum) throws Exception;
	
	//제품을 필터를 통해서 뿌리기
	public List<Map<String, Object>> filter(FilterParam filterParam) throws Exception;
	
	//리뷰 게시글 카운트
	// product page로 넘어가면서, 사용자 Customizing Information 
	public Map<String, Object> selectCustomizeInfo(String customerId) throws Exception;
	
}
