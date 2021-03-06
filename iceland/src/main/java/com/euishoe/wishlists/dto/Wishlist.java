package com.euishoe.wishlists.dto;

/**
 * 쇼핑몰 찜 dto
 * @author 전상일
 */
public class Wishlist {
	
	// 변수 선언
	private int wishlistNum;	// 관심상품번호
	private String customerId;	// 회원아이디
	private String productCode;	// 상품코드
	
	// 생성자(Constructor) 선언
	
	public Wishlist() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Wishlist(int wishlistNum, String customerId, String productCode) {
		super();
		this.wishlistNum = wishlistNum;
		this.customerId = customerId;
		this.productCode = productCode;
	}


	// setter, getter
	public int getWishlistNum() {
		return wishlistNum;
	}

	public void setWishlistNum(int wishlistNum) {
		this.wishlistNum = wishlistNum;
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	// toString() 선언
	@Override
	public String toString() {
		return "Wishlist [wishlistNum=" + wishlistNum + ", customerId=" + customerId + ", productCode=" + productCode
				+ "]";
	}
	
}
