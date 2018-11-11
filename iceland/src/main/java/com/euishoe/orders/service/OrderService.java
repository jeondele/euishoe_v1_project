package com.euishoe.orders.service;

import com.euishoe.products.dto.Product;

/**
 * 쇼핑몰 주문과 관련된 서비스 인터페이스
 * 
 * @author 전상일, 박시원
 *
 */
public interface OrderService {
	// product객체 생성 
	public void createProduct(Product product) throws Exception;
	//order_by_product객체 생성
	public void createOBP(String productCode) throws Exception;
}
