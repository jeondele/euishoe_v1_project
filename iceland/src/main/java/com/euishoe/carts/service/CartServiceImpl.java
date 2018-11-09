package com.euishoe.carts.service;
/**
 * 쇼핑몰 장바구니와 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.euishoe.carts.dao.CartDao;

public class CartServiceImpl implements CartService {
	public CartDao cartDao;

	public CartDao getCartDao() {
		return cartDao;
	}

	public void setCartDao(CartDao cartDao) {
		this.cartDao = cartDao;
	}
	
	// 장바구니 리스트 던져주기
	public List<HashMap<String, Object>> listCart(){
		return cartDao.listCart();
	}
}
