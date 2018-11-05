package com.euishoe.products.dto;
/**
 * 쇼핑몰의 낱개 상품 dto
 * 
 * @author 전상일
 *
 */
public class Product {
	//상품코드
	private String productCode;
	//상품번호 
	private int productNo; 
	//상품색깔코드
	private String colorCode;
	//상품사이즈코드
	private String sizeCode;
	//상품수량
	private String productCount;
	
	public Product() {
	}

	public Product(String productCode, int productNo, String colorCode, String sizeCode, String productCount) {
		super();
		this.productCode = productCode;
		this.productNo = productNo;
		this.colorCode = colorCode;
		this.sizeCode = sizeCode;
		this.productCount = productCount;
	}

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public String getColorCode() {
		return colorCode;
	}

	public void setColorCode(String colorCode) {
		this.colorCode = colorCode;
	}

	public String getSizeCode() {
		return sizeCode;
	}

	public void setSizeCode(String sizeCode) {
		this.sizeCode = sizeCode;
	}

	public String getProductCount() {
		return productCount;
	}

	public void setProductCount(String productCount) {
		this.productCount = productCount;
	}

	@Override
	public String toString() {
		return "Product [productCode=" + productCode + ", productNo=" + productNo + ", colorCode=" + colorCode
				+ ", sizeCode=" + sizeCode + ", productCount=" + productCount + "]";
	}
	
}
