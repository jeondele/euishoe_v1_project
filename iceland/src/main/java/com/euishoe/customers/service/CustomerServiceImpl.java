package com.euishoe.customers.service;
/**
 * 쇼핑몰 고객과 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.carts.dao.CartDao;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.customers.dao.CustomerDao;
import com.euishoe.customers.dto.Customer;
import com.euishoe.points.dao.PointDao;
import com.euishoe.wishlists.dao.WishlistDao;
import com.google.gson.Gson;

public class CustomerServiceImpl implements CustomerService {
	private CustomerDao customerDao;
	private CartDao cartDao;
	private WishlistDao wishlistDao;
	private PointDao pointDao;

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
	
	public PointDao getPointDao() {
		return pointDao;
	}

	public void setPointDao(PointDao pointDao) {
		this.pointDao = pointDao;
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
		pointDao.create(customer.getCustomerId());
		return;
	}

	// 장바구니 가져오기
	@Override
	public List<HashMap<String, Object>> listCartForLogin(String customerId) {
		return cartDao.listCartForLogin(customerId);
	}

	// 위시리스트 가져오기
	@Override
	public List<HashMap<String, Object>> listWish(String customerId) {
		return wishlistDao.listWishesForLogin(customerId);
	}

	/*
	 * 쿠키 생성
	 * */
	
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response, ModelAndView mav,
			Customer customer, String rememberCustomerId) {
		
		Cookie[] cookies = null;
		
		/* 아이디 쿠키 생성 */
		Cookie cookie = new Cookie("loginId", customer.getCustomerId());
		cookie.setMaxAge(60 * 60 * 24 * 1000);
		cookie.setPath("/iceland/");
		
		Cookie cookieUserName = null;
		try {
			cookieUserName = new Cookie("userName", URLEncoder.encode(customer.getCustomerName(),"utf-8"));
			cookieUserName.setMaxAge(60 * 60 * 24 * 1000);
			cookieUserName.setPath("/iceland/");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		response.addCookie(cookie);
		response.addCookie(cookieUserName);
		
		mav.addObject("loginCookie", cookie);
		mav.addObject("customer", customer);

		/* 장바구니 리스트 쿠키 생성 */

		// 장바구니 리스트
		List<HashMap<String, Object>> listCart = listCartForLogin(customer.getCustomerId());
		
		// 리스트 내 객체를 담을 HashMap
		HashMap hashmapCart = new HashMap<String, String>();
		int prior = 1;
		String json = "";
		Gson gson = new Gson();
		for (HashMap<String, Object> hash : listCart) {
			hashmapCart.put("image_ref", hash.get("IMAGE_REF"));
			hashmapCart.put("PRODUCT_NAME", hash.get("PRODUCT_NAME"));
			hashmapCart.put("product_count", hash.get("PRODUCT_COUNT"));
			hashmapCart.put("PRODUCT_PRICE", hash.get("PRODUCT_PRICE"));
			hashmapCart.put("PRODUCT_NUM", hash.get("PRODUCT_NUM"));
			
			// utf-8방식으로 인코딩 후 JSON 객체 만들기
			try {
				json = URLEncoder.encode(gson.toJson(hashmapCart).trim(), "utf-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			// 쿠키 생성
			Cookie cartCookie = new Cookie("cart" + prior++, gson.toJson(json));

			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=UTF-8");

			cartCookie.setMaxAge(60 * 60 * 24 * 1000);
			cartCookie.setPath("/iceland/");
			response.addCookie(cartCookie);
		}

		/* 위시리스트 쿠키 생성 */
		List<HashMap<String, Object>> listWish = listWish(customer.getCustomerId());

		// 리스트 내 객체를 담을 HashMap
		HashMap hashmapWish = new HashMap<String, String>();
		prior = 1;
		
		for (HashMap<String, Object> hash : listWish) {
			hashmapWish.put("image_ref", hash.get("image_ref"));
			hashmapWish.put("PRODUCT_NAME", hash.get("PRODUCT_NAME"));
			hashmapWish.put("product_manufacturer", hash.get("product_manufacturer"));
			hashmapWish.put("PRODUCT_PRICE", hash.get("PRODUCT_PRICE"));
			hashmapWish.put("PRODUCT_NUM", hash.get("PRODUCT_NUM"));
			
			try {
				json = URLEncoder.encode(gson.toJson(hashmapWish).trim(), "utf-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			// 쿠키 생성
			Cookie wishCookie = new Cookie("wish" + prior++, gson.toJson(json));

			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=UTF-8");

			wishCookie.setMaxAge(60 * 60 * 24 * 1000);
			wishCookie.setPath("/iceland/");
			response.addCookie(wishCookie);
		}

		// utf-8방식으로 인코딩 후 JSON 객체 만들기

		// 아이디 기억 버튼
		if (rememberCustomerId != null) {
			Cookie rememberCookie = new Cookie("idRemember", customer.getCustomerId());
			rememberCookie.setMaxAge(60 * 60 * 24 * 1000);
			rememberCookie.setPath("/iceland/");
			response.addCookie(rememberCookie);
			mav.addObject("rememberCookie", rememberCookie);
		} else {
			if (request.getCookies() != null) {
				cookies = request.getCookies();
				for (Cookie cookie2 : cookies) {
					if (cookie2.getName().equals("idRemember")) {
						cookie2.setMaxAge(0);
						mav.addObject("rememberCookie", cookie2);
					}
				}
			}
		}
		
		return mav;

	}

	@Override  // 회원정보 수정
	public void modifyInfo(Customer customer) throws Exception {
		customerDao.modifyInfo(customer);
	}
}
