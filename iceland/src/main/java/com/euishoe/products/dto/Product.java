package com.euishoe.products.dto;
/**
 * 쇼핑몰의 낱개 상품 dto
 * 
 * @author 전상일
 *
 */
public class Product {

	// 변수 선언
	private String productCode; 			// 상품코드
	private String jacketCode; 				// 상의코드명
	private String pantsCode; 				// 하의코드명
	private int productNum; 				// 상품번호
	private int productCount; 				// 상품수량

	
	// 생성자(Constructor) 선언
	public Product() {
	}

	public Product(String productCode, String jacketCode, String pantsCode, int productNum,
			int productCount) {
		super();
		this.productCode = productCode;
		this.jacketCode = jacketCode;
		this.pantsCode = pantsCode;
		this.productNum = productNum;
		this.productCount = productCount;
	}

	
	// setter, getter 선언
	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public String getJacketCode() {
		return jacketCode;
	}

	public void setJacketCode(String jacketCode) {
		this.jacketCode = jacketCode;
	}

	public String getPantsCode() {
		return pantsCode;
	}

	public void setPantsCode(String pantsCode) {
		this.pantsCode = pantsCode;
	}

	public int getProductNum() {
		return productNum;
	}

	public void setProductNum(int productNum) {
		this.productNum = productNum;
	}

	public int getProductCount() {
		return productCount;
	}

	public void setProductCount(int productCount) {
		this.productCount = productCount;
	}

	
	// toString() 선언
	@Override
	public String toString() {
		return "Product [productCode=" + productCode + ", jacketCode=" + jacketCode
				+ ", pantsCode=" + pantsCode + ", productNum=" + productNum + ", productCount=" + productCount + "]";
	}
	
}
