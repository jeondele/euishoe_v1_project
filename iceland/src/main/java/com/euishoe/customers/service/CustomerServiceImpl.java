package com.euishoe.customers.service;
/**
 * 쇼핑몰 고객과 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */

import java.util.HashMap;
import java.util.List;

import com.euishoe.carts.dao.CartDao;
import com.euishoe.customers.dao.CustomerDao;
import com.euishoe.customers.dto.Customer;
import com.euishoe.wishlists.dao.WishlistDao;

public class CustomerServiceImpl implements CustomerService {
	private CustomerDao customerDao;
	private CartDao cartDao;
	private WishlistDao wishlistDao;

	public CustomerDao getCustomerDao() {
		return customerDao;
	}

	public void setCustomerDao(CustomerDao customerDao) {
		this.customerDao = customerDao;
	}

	public CartDao getCartDao() {
		return cartDao;
	}

	public void setCartDao(CartDao cartDao) {
		this.cartDao = cartDao;
	}

	public WishlistDao getWishlistDao() {
		return wishlistDao;
	}

	public void setWishlistDao(WishlistDao wishlistDao) {
		this.wishlistDao = wishlistDao;
	}

	// 로그인 인증
	@Override
	public Customer certify(String customerId, String customerPassword) throws Exception {
		return customerDao.certify(customerId, customerPassword);
	}
	
	// 회원가입 서비스
	@Override
	public void create(Customer customer) throws Exception {
		customerDao.create(customer);
		return;
	}
	
	// 장바구니 가져오기
	@Override
	public List<HashMap<String, Object>> listCartForLogin(String customerId){
		return cartDao.listCartForLogin(customerId);
	}
	
	// 위시리스트 가져오기
	@Override
	public List<HashMap<String, Object>> listWish(String customerId){
		return wishlistDao.listWishesForLogin(customerId);
	}
}
