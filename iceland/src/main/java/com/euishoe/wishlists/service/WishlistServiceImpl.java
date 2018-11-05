package com.euishoe.wishlists.service;
/**
 * 쇼핑몰 찜상품과 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */

import com.euishoe.wishlists.dao.WishlistDao;

public class WishlistServiceImpl implements WishlistService {
	public WishlistDao wishlistDao;

	public WishlistDao getWishlistDao() {
		return wishlistDao;
	}

	public void setWishlistDao(WishlistDao wishlistDao) {
		this.wishlistDao = wishlistDao;
	}
}
