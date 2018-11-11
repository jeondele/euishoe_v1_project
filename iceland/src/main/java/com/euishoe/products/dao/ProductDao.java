package com.euishoe.products.dao;

import java.util.List;

import com.euishoe.customers.dto.Customer;
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
	public List<ProductInfo> newProductList() throws Exception;

	// 히트제품 4개 정보와 이미지 위치 get(메인화면에 뿌려줄것)
	public List<ProductInfo> hitProductList() throws Exception;
	
	// 전체리스트 출력
	List<ProductInfo> selectAll() throws Exception;
	
	// 주문시 product객체 생성
	public String create(Product product) throws Exception;
}
