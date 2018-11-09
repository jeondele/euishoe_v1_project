package com.euishoe.carts.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 쇼핑몰 장바구니와 관련된  서비스 인터페이스
 * 
 * @author 전상일
 *
 */
public interface CartService {
	public List<HashMap<String, Object>> listCart();
}
