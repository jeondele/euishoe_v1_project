package com.euishoe.products.dto;

public class ProductDetail {
	//상품번호
	private int productNo;
	//상품유형번호
	private int productTypeNo;
	//상품이름
	private String productName;
	//상품원가
	private int productOriginCost;
	//상품정가
	private int productPrice;
	//상품요약정보
	private String productBriefInfo;
	//상품무게
	private int productWeight;
	//상품제조사
	private String productManufacturer;
	//상품출시일자
	private String productOpen;
	//상품생산지
	private String productOrigin;
	//상품글번호
	private int productListNo;
	//상품글에 적힌 가격
	private int productListPrice;
	
	public ProductDetail() {
	}
	
	public ProductDetail(int productNo, int productTypeNo, String productName, int productOriginCost, int productPrice,
			String productBriefInfo, int productWeight, String productManufacturer, String productOpen,
			String productOrigin, int productListNo, int productListPrice) {
		super();
		this.productNo = productNo;
		this.productTypeNo = productListNo;
		this.productName = productName;
		this.productOriginCost = productOriginCost;
		this.productPrice = productPrice;
		this.productBriefInfo = productBriefInfo;
		this.productWeight = productWeight;
		this.productManufacturer = productManufacturer;
		this.productOpen = productOpen;
		this.productOrigin = productOrigin;
		this.productListNo = productListNo;
		this.productListPrice = productListPrice;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public int getProductTypeNo() {
		return productTypeNo;
	}

	public void setProductTypeNo(int productTypeNo) {
		this.productTypeNo = productTypeNo;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getProductOriginCost() {
		return productOriginCost;
	}

	public void setProductOriginCost(int productOriginCost) {
		this.productOriginCost = productOriginCost;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductBriefInfo() {
		return productBriefInfo;
	}

	public void setProductBriefInfo(String productBriefInfo) {
		this.productBriefInfo = productBriefInfo;
	}

	public int getProductWeight() {
		return productWeight;
	}

	public void setProductWeight(int productWeight) {
		this.productWeight = productWeight;
	}

	public String getProductManufacturer() {
		return productManufacturer;
	}

	public void setProductManufacturer(String productManufacturer) {
		this.productManufacturer = productManufacturer;
	}

	public String getProductOpen() {
		return productOpen;
	}

	public void setProductOpen(String productOpen) {
		this.productOpen = productOpen;
	}

	public String getProductOrigin() {
		return productOrigin;
	}

	public void setProductOrigin(String productOrigin) {
		this.productOrigin = productOrigin;
	}

	public int getProductListNo() {
		return productListNo;
	}

	public void setProductListNo(int productListNo) {
		this.productListNo = productListNo;
	}

	public int getProductListPrice() {
		return productListPrice;
	}

	public void setProductListPrice(int productListPrice) {
		this.productListPrice = productListPrice;
	}

	@Override
	public String toString() {
		return "ProductDetail [productNo=" + productNo + ", productName=" + productName + ", productOriginCost="
				+ productOriginCost + ", productPrice=" + productPrice + ", productBriefInfo=" + productBriefInfo
				+ ", productWeight=" + productWeight + ", productManufacturer=" + productManufacturer + ", productOpen="
				+ productOpen + ", productOrigin=" + productOrigin + ", productListNo=" + productListNo
				+ ", productListPrice=" + productListPrice + "]";
	}
}
