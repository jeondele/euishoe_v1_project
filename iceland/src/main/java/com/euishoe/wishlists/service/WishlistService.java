package com.euishoe.wishlists.service;

import java.util.List;

import com.euishoe.products.dto.ProductInfo;

/**
 * 쇼핑몰 찜목록과 관련된  서비스 인터페이스
 * 
 * @author 전상일
 *
 */
public interface WishlistService {
	//해당 상품번호가 해당 회원의 위시리스트에 추가하는 메소드
	public boolean insertWishlist(String customerId, int productNum) throws Exception;
	
	//해당 회원의 위시리스트 추가된 목록을 반환하는 메소드
	public List<ProductInfo> selectWishlists(String customerId) throws Exception;
	
	//해당 상품번호가 해당 회원의 위시리스트에 추가되어있는지의 여부를 확인하는 메소드
	public boolean canAddToWishlist(String customerId, int productNum) throws Exception;
	
	//해당 상품번호를 , 해당 회원의 위시리스트에서  삭제하는 메소드
	public boolean deleteWishlist(String customerId, int productNum) throws Exception;
}
