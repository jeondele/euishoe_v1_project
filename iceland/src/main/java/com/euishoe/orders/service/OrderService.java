package com.euishoe.orders.service;

import java.util.List;

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
	
	//결제 다음 인풋할 번호 검색
	public int selectPaymentNum() throws Exception;
	//결제 생성
	public void insertPayment()throws Exception;
	//배송 다음 인풋할 번호 검색
	public int selectDeliveryNum() throws Exception;
	//배송 생성
	public void insertDelivery() throws Exception;
	//포인트 추가
	public void insertPoint()throws Exception;
	//포인트 삭제
	public void deletePoint() throws Exception;
	//주문 생성
	public void insertOrder() throws Exception;
	//해당 상의, 하의 수량 제거
	public void deleteSuitCount() throws Exception;
	//장바구니 결제 했으면 해당 품목 삭제
	public void deleteCookie() throws Exception;
}
