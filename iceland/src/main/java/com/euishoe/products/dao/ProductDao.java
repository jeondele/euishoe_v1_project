package com.euishoe.products.dao;

import java.util.List;
import java.util.Map;

import com.euishoe.common.web.FilterParam;
import com.euishoe.products.dto.Product;
import com.euishoe.products.dto.ProductInfo;

/**
 * 쇼핑몰 상품과 관련된 Dao 인터페이스
 * 
 * @author 박시원
 *
 */
public interface ProductDao {
	
	// 신상4개제품 정보와 이미지위치 get(메인화면에 뿌려줄것)
	public List<Map<String, Object>> newProductList() throws Exception;

	// 히트제품 4개 정보와 이미지 위치 get(메인화면에 뿌려줄것)
	public List<Map<String, Object>> hitProductList() throws Exception;
	
	// 전체리스트 출력
	
	// 해당 상품번호에 해당하는 이미치 주소 리스트 출력
	public List<String> selectImageRefByProductNum(int productNum) throws Exception;
	
	// 해당 상품번호에 해당하는 정보 출력
	public List<ProductInfo> selectProductInfoByProductNum(int productNum) throws Exception;

	//List<ProductInfo> selectAll() throws Exception; //충돌
	
	// 주문시 product객체 생성
	public String create(Product product) throws Exception;

	public List<Map<String, Object>> selectAllById(int productNum) throws Exception;

	public List<Map<String, Object>> selectAll2() throws Exception;

	public List<Map<String, Object>> selectAll() throws Exception;
	
	// 필터를 통한 전체 띄우기
	public List<Map<String, Object>> filter(FilterParam filterParam) throws Exception;
}
