package com.euishoe.orders.dto;

public class OrderByProduct {
	private int opNo;
	private String productCode;
	private int orderNo;
	private int productCount;
	
	public OrderByProduct() {
		super();
	}

	public OrderByProduct(int opNo, String productCode, int orderNo, int productCount) {
		super();
		this.opNo = opNo;
		this.productCode = productCode;
		this.orderNo = orderNo;
		this.productCount = productCount;
	}

	public int getOpNo() {
		return opNo;
	}

	public void setOpNo(int opNo) {
		this.opNo = opNo;
	}

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public int getProductCount() {
		return productCount;
	}

	public void setProductCount(int productCount) {
		this.productCount = productCount;
	}

	@Override
	public String toString() {
		return "OrderByProduct [opNo=" + opNo + ", productCode=" + productCode + ", orderNo=" + orderNo
				+ ", productCount=" + productCount + "]";
	}
}
