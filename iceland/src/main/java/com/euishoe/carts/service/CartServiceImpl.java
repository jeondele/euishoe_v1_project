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

	@Override
	public List<HashMap<String, Object>> listCart() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
