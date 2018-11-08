package com.euishoe.wishlists.service;
/**
 * 쇼핑몰 찜상품과 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */

import java.util.List;

import com.euishoe.products.dto.ProductInfo;
import com.euishoe.wishlists.dao.WishlistDao;
import com.euishoe.wishlists.dto.Wishlist;

public class WishlistServiceImpl implements WishlistService {
	public WishlistDao wishlistDao;

	public WishlistDao getWishlistDao() {
		return wishlistDao;
	}

	public void setWishlistDao(WishlistDao wishlistDao) {
		this.wishlistDao = wishlistDao;
	}

	//해당 상품번호가 해당 회원의 위시리스트에 추가하는 메소드
	@Override
	public boolean insertWishlist(String customerId, int productNum) throws Exception {
		return wishlistDao.insertWishlist(customerId, productNum);
	}

	//해당 회원의 위시리스트 추가된 목록을 반환하는 메소드
	@Override
	public List<ProductInfo> selectWishlists(String customerId) throws Exception {
		return wishlistDao.selectWishlists(customerId);
	}

	//해당 상품번호가 해당 회원의 위시리스트에 추가되어있는지의 여부를 확인하는 메소드
	@Override
	public boolean canAddToWishlist(String customerId, int productNum) throws Exception {
		return wishlistDao.canAddToWishlist(customerId, productNum);
	}

	//해당 상품번호를 , 해당 회원의 위시리스트에서  삭제하는 메소드
	@Override
	public boolean deleteWishlist(String customerId, int productNum) throws Exception {
		return wishlistDao.deleteWishlist(customerId, productNum);
	}
}
