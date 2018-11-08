package com.euishoe.carts.dto;

import com.euishoe.images.dto.Image;
import com.euishoe.products.dto.Product;
import com.euishoe.products.dto.ProductInfo;

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
	private String productCode; 			// 상품코드
	private String customerId; 				// 회원아이디
	
	// product_code
	private Image image;
	// product_code
	private Product product;
	// product_num
	private ProductInfo productinfo;
	
	public Cart() {
	}

	public Cart(int cartNum, String productCode, String customerId, Image image, Product product,
			ProductInfo productinfo) {
		super();
		this.cartNum = cartNum;
		this.productCode = productCode;
		this.customerId = customerId;
		this.image = image;
		this.product = product;
		this.productinfo = productinfo;
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

	public Image getImage() {
		return image;
	}

	public void setImage(Image image) {
		this.image = image;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public ProductInfo getProductinfo() {
		return productinfo;
	}

	public void setProductinfo(ProductInfo productinfo) {
		this.productinfo = productinfo;
	}

	@Override
	public String toString() {
		return "Cart [cartNum=" + cartNum + ", productCode=" + productCode + ", customerId=" + customerId + ", image="
				+ image + ", product=" + product + ", productinfo=" + productinfo + "]";
	}


	
}
