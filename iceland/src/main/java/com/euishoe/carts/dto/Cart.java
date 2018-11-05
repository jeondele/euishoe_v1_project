package com.euishoe.carts.dto;

/**
 * 쇼핑몰 장바구니 dto
 * 
 * @author 전상일
 *
 */
public class Cart {
	private int cartNum; //장바구니 번호
	private String productCode; // 상품코드
	private String customerId; // 회원아이디
	private int cartCount; // 수량
	
	public Cart() {
	}

	public Cart(int cartNum, String productCode, String customerId, int cartCount) {
		super();
		this.cartNum = cartNum;
		this.productCode = productCode;
		this.customerId = customerId;
		this.cartCount = cartCount;
	}

	public int getCartNum() {
		return cartNum;
	}

	public void setCartNum(int cartNum) {
		this.cartNum = cartNum;
	}

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public int getCartCount() {
		return cartCount;
	}

	public void setCartCount(int cartCount) {
		this.cartCount = cartCount;
	}

	@Override
	public String toString() {
		return "Cart [cartNum=" + cartNum + ", productCode=" + productCode + ", customerId=" + customerId
				+ ", cartCount=" + cartCount + "]";
	}
	
}
