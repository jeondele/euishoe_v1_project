package com.euishoe.products.service;

import java.util.List;

import com.euishoe.products.dto.ProductInfo;

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
}
