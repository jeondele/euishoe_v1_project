package com.euishoe.orders.dto;

/**
 * 상품 주문과 관련된 dto 객체
 * @author 백욱기
 *
 */
public class OrderByProduct {
	
	// 변수 선언
	private int orderByProductNum; 		// 한 개의 상품에 대한 주문번호
	private String productCode; 		// 상품코드명 
	private int orderNum; 				// 주문번호
	
	
	// 생성자(Constructor) 선언
	public OrderByProduct() {
		super();
	}

	public OrderByProduct(String productCode, int orderNum) {
		this(0, productCode, orderNum);
	}
	
	public OrderByProduct(int orderByProductNum, String productCode, int orderNum) {
		super();
		this.orderByProductNum = orderByProductNum;
		this.productCode = productCode;
		this.orderNum = orderNum;
	}

	
	// setter, getter 선언
	public int getOrderByProductNum() {
		return orderByProductNum;
	}

	public void setOrderByProductNum(int orderByProductNum) {
		this.orderByProductNum = orderByProductNum;
	}

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public int getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	
	// toString() 선언
	@Override
	public String toString() {
		return "OrderByProduct [orderByProductNum=" + orderByProductNum + ", productCode=" + productCode + ", orderNum="
				+ orderNum + "]";
	}

}
