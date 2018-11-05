package com.euishoe.orders.dto;

public class OrderByProduct {
	
	private int orderByProductNum; //한 개의 상품에 대한 주문번호
	private String productCode; // 상품코드명 
	private int orderNum; // 주문번호
	private int productCount; // 상품수량
	
	public OrderByProduct() {
		super();
	}

	public OrderByProduct(int orderByProductNum, String productCode, int orderNum, int productCount) {
		super();
		this.orderByProductNum = orderByProductNum;
		this.productCode = productCode;
		this.orderNum = orderNum;
		this.productCount = productCount;
	}

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

	public int getProductCount() {
		return productCount;
	}

	public void setProductCount(int productCount) {
		this.productCount = productCount;
	}

	@Override
	public String toString() {
		return "OrderByProduct [orderByProductNum=" + orderByProductNum + ", productCode=" + productCode + ", orderNum="
				+ orderNum + ", productCount=" + productCount + "]";
	}

}
