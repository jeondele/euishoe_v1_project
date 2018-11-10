package com.euishoe.wishlists.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.euishoe.products.dto.ProductInfo;

/**
 * 쇼핑몰 찜 리스트 관련된 Dao 인터페이스
 * 
 * @author 전상일
 *
 */
public interface WishlistDao {
	//해당 상품번호가 해당 회원의 위시리스트에 추가하는 메소드
	public boolean insertWishlist(String customerId, int productNum) throws Exception;
	
	//해당 회원의 위시리스트 추가된 목록을 반환하는 메소드
	public List<ProductInfo> selectWishlists(String customerId) throws Exception;
	
	//해당 상품번호가 해당 회원의 위시리스트에 추가되어있는지의 여부를 확인하는 메소드
	public boolean canAddToWishlist(String customerId, int productNum) throws Exception;
	
	//해당 상품번호를 , 해당 회원의 위시리스트에서  삭제하는 메소드
	public boolean deleteWishlist(String customerId, int productNum) throws Exception;
	
	// 회원의 위시리스트를 가져오는 메소드
	public List<HashMap<String, Object>> listWishesForLogin(String customer_id);
}
