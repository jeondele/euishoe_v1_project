package com.euishoe.orders.service;

import java.util.List;
import java.util.Map;

import com.euishoe.products.dto.Product;
import com.euishoe.products.dto.ProductInfo;

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
	//제품코드에 해당하는 제품정보 가져오기
	List<ProductInfo> getProductInfo(int productNum) throws Exception;
	//상하의 코드 파싱
	public String[] productCodeParsing(String productCode) throws Exception;
	
	//고객 주문 정보
	public Map<String, Object> customerOrderInfo(String customerId) throws Exception;
}
