package com.euishoe.carts.dto;

/**
 * 쇼핑몰 장바구니 dto
 * 
 * 사용되는 테이블 : carts,images,products,product_infos
 * 
 * @author 박호준
 *
 */
public class Cart {
	
	// 변수선언
	private int cartNum; 					//장바구니 번호
	private String productNum; 			// 상품코드
	private String customerId; 				// 회원아이디
	
	public Cart() {
	}

	public Cart(int cartNum, String productNum, String customerId) {
		super();
		this.cartNum = cartNum;
		this.productNum = productNum;
		this.customerId = customerId;
	}

	public int getCartNum() {
		return cartNum;
	}

	public void setCartNum(int cartNum) {
		this.cartNum = cartNum;
	}

	public String getProductNum() {
		return productNum;
	}

	public void setProductNum(String productNum) {
		this.productNum = productNum;
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	@Override
	public String toString() {
		return "Cart [cartNum=" + cartNum + ", productNum=" + productNum + ", customerId=" + customerId
				+ "]";
	}
}
