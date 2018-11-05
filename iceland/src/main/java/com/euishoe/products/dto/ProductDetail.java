package com.euishoe.products.dto;

public class ProductDetail {
	
	private int productNum; //상품번호
	private int productListNum; //상품글번호
	private String productName; //상품이름
	private int productCost; //상품원가
	private int productPrice; //상품정가
	private String productBriefInfomation; //상품요약정보
	private String productManufacturer; //상품제조사
	private String productReleaseDate; //상품출시일자
	private String productOrigin; //상품생산지
	private int productListPrice; //상품글에 적힌 가격
	
	public ProductDetail() {
	}

	public ProductDetail(int productNum, int productListNum, String productName, int productCost, int productPrice,
			String productBriefInfomation, String productManufacturer, String productReleaseDate, String productOrigin,
			int productListPrice) {
		super();
		this.productNum = productNum;
		this.productListNum = productListNum;
		this.productName = productName;
		this.productCost = productCost;
		this.productPrice = productPrice;
		this.productBriefInfomation = productBriefInfomation;
		this.productManufacturer = productManufacturer;
		this.productReleaseDate = productReleaseDate;
		this.productOrigin = productOrigin;
		this.productListPrice = productListPrice;
	}

	public int getProductNum() {
		return productNum;
	}

	public void setProductNum(int productNum) {
		this.productNum = productNum;
	}

	public int getProductListNum() {
		return productListNum;
	}

	public void setProductListNum(int productListNum) {
		this.productListNum = productListNum;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getProductCost() {
		return productCost;
	}

	public void setProductCost(int productCost) {
		this.productCost = productCost;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductBriefInfomation() {
		return productBriefInfomation;
	}

	public void setProductBriefInfomation(String productBriefInfomation) {
		this.productBriefInfomation = productBriefInfomation;
	}

	public String getProductManufacturer() {
		return productManufacturer;
	}

	public void setProductManufacturer(String productManufacturer) {
		this.productManufacturer = productManufacturer;
	}

	public String getProductReleaseDate() {
		return productReleaseDate;
	}

	public void setProductReleaseDate(String productReleaseDate) {
		this.productReleaseDate = productReleaseDate;
	}

	public String getProductOrigin() {
		return productOrigin;
	}

	public void setProductOrigin(String productOrigin) {
		this.productOrigin = productOrigin;
	}

	public int getProductListPrice() {
		return productListPrice;
	}

	public void setProductListPrice(int productListPrice) {
		this.productListPrice = productListPrice;
	}

	@Override
	public String toString() {
		return "ProductDetail [productNum=" + productNum + ", productListNum=" + productListNum + ", productName="
				+ productName + ", productCost=" + productCost + ", productPrice=" + productPrice
				+ ", productBriefInfomation=" + productBriefInfomation + ", productManufacturer=" + productManufacturer
				+ ", productReleaseDate=" + productReleaseDate + ", productOrigin=" + productOrigin
				+ ", productListPrice=" + productListPrice + "]";
	}
	
}
