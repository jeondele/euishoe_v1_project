package com.euishoe.carts.dao;

import java.util.List;
import java.util.Map;

import com.euishoe.carts.dto.Cart;

/**
 * 쇼핑몰 장바구니와 관련된 Dao 인터페이스
 * 
 * @author 박호준
 *
 */
public interface CartDao {

	// 장바구니 페이지 접속시 리스트 분배
	public List<Map<String, Object>> listCart();
	
	// 장바구니 등록
	public void createCart(Cart cart);
	
	// 장바구니 삭제
	public void deleteCart(int cartNum);
}
