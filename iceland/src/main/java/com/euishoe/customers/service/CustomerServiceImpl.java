package com.euishoe.customers.service;
/**
 * 쇼핑몰 고객과 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.carts.dao.CartDao;
import com.euishoe.carts.dto.Cart;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.customers.dao.CustomerDao;
import com.euishoe.customers.dto.Customer;
import com.euishoe.points.dao.PointDao;
import com.euishoe.products.dao.ProductDao;
import com.euishoe.products.dto.Product;
import com.euishoe.wishlists.dao.WishlistDao;
import com.google.gson.Gson;

public class CustomerServiceImpl implements CustomerService {
	private CustomerDao customerDao;
	private CartDao cartDao;
	private WishlistDao wishlistDao;
	private PointDao pointDao;
	private ProductDao productDao;

	public ProductDao getProductDao() {
		return productDao;
	}

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

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
	 */

	public ModelAndView login(HttpServletRequest request, HttpServletResponse response, ModelAndView mav,
			Customer customer, String rememberCustomerId) {

		Cookie[] cookies = null;

		/* 아이디 쿠키 생성 */
		Cookie cookie = new Cookie("loginId", customer.getCustomerId());
		cookie.setMaxAge(60 * 60 * 24 * 1000);
		cookie.setPath("/iceland/");

		Cookie cookieUserName = null;
		try {
			cookieUserName = new Cookie("userName", URLEncoder.encode(customer.getCustomerName(), "utf-8"));
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
			hashmapCart.put("PRODUCT_CODE", hash.get("PRODUCT_CODE"));
			hashmapCart.put("JACKET_CODE", hash.get("JACKET_CODE"));
			hashmapCart.put("PANTS_CODE", hash.get("PANTS_CODE"));

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

	@Override // 회원정보 수정
	public void modifyInfo(Customer customer) throws Exception {
		customerDao.modifyInfo(customer);
	}

	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response, ModelAndView mav) {
		Cookie loginId = null;
		Cookie[] cookies = request.getCookies();
		Gson gson = new Gson();
		String json = "";

		List<HashMap<String, Object>> listCarts = new ArrayList<HashMap<String, Object>>();
		List<HashMap<String, Object>> listWishes = new ArrayList<HashMap<String, Object>>();

		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("loginId")) {
				loginId = cookie;
				// product_Code,Customer_id,cart_num
			} else if (cookie.getName().substring(0, 4).equals("cart")) {
				System.out.println(123123123);
				try {
					json = URLDecoder.decode(cookie.getValue(), "UTF-8");
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				HashMap map = gson.fromJson(json, HashMap.class);
				listCarts.add(map);
			} else if (cookie.getName().substring(0, 4).equals("wish")) {
				try {
					json = URLDecoder.decode(cookie.getValue(), "UTF-8");
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				HashMap map = gson.fromJson(json, HashMap.class);
				listWishes.add(map);
			}
		}

		// 기존 DB
		List<HashMap<String, Object>> listDB = cartDao.listCartForLogin(loginId.getValue());

		List<HashMap<String, Object>> sameList = new ArrayList<HashMap<String, Object>>();

		List<HashMap<String, Object>> updateList = new ArrayList<HashMap<String, Object>>();

		List<HashMap<String, Object>> deleteList = new ArrayList<HashMap<String, Object>>();

		List<HashMap<String, Object>> insertList = new ArrayList<HashMap<String, Object>>();
		// 다른내용 판단
		/*
		 * 상품 제목, 상품 수량 판단
		 */

		if (listDB.isEmpty()) {
			Iterator<HashMap<String, Object>> iter = listCarts.iterator(); 
			while(iter.hasNext()) {
				HashMap hashMap = iter.next();
				
				// while문으로 교체 리턴해야함.
				Map map = new HashMap();
				map.put("PRODUCT_CODE",(String) hashMap.get("PRODUCT_CODE"));
				map.put("JACKET_CODE",(String) hashMap.get("JACKET_CODE"));
				map.put("PANTS_CODE",(String) hashMap.get("PANTS_CODE"));
				map.put("PRODUCT_NUM",(Double)hashMap.get("PRODUCT_NUM"));
				map.put("PRODUCT_COUNT",hashMap.get("product_count"));
				
				try {
					productDao.createOne(map);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				Cart cart = new Cart(0, (String) hashMap.get("PRODUCT_CODE"), loginId.getValue());
				cartDao.createCart(cart);
				
				if(!iter.hasNext()) {
					return null;
				}
			}
		} else {
			for (HashMap<String, Object> hashMap : listDB) {
				for (HashMap<String, Object> hashMapForCart : listCarts) {
					if (hashMap.get("PRODUCT_NAME").equals(hashMapForCart.get("PRODUCT_NAME"))) {
						if ((hashMap.get("PRODUCT_COUNT") + ".0").equals((hashMapForCart.get("product_count") + ""))) {
							// 상품제목 O, 상품수량 O
							sameList.add(hashMap);
						} else {
							// 상품제목 O, 상품수량 X
							updateList.add(hashMapForCart);
						}

					} else {
						System.out.println("실패");
					}
				}
			}
		}
		
		for (HashMap<String, Object> hashMap : listDB) {
			boolean same = false;

			for (HashMap<String, Object> hashMap2 : sameList) {
				if (hashMap.get("PRODUCT_NAME").equals(hashMap2.get("PRODUCT_NAME"))) {
					same = true;
				}
			}

			if (!same) {
				deleteList.add(hashMap);
				System.out.println("####" + hashMap.get("PRODUCT_CODE"));
			}
		}

		for (HashMap<String, Object> hashMap : listCarts) {
			boolean same = false;

			for (HashMap<String, Object> hashMap2 : sameList) {
				if (hashMap.get("PRODUCT_NAME").equals(hashMap2.get("PRODUCT_NAME"))) {
					same = true;
				}
			}

			if (!same) {
				insertList.add(hashMap);
			}
		}

		for (HashMap<String, Object> hashMap : updateList) {
			Map map = new HashMap<>();
			map.put("productCode",(String) hashMap.get("PRODUCT_CODE"));
			map.put("productCount",hashMap.get("product_count"));
            try {
				productDao.update(map);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		for (HashMap<String, Object> hashMap : deleteList) {
			cartDao.deleteCart((String) hashMap.get("PRODUCT_CODE"));
		}

		for (HashMap<String, Object> hashMap : insertList) {
			
			try {
				Map map = new HashMap();
				map.put("PRODUCT_CODE",(String) hashMap.get("PRODUCT_CODE"));
				map.put("JACKET_CODE",(String) hashMap.get("JACKET_CODE"));
				map.put("PANTS_CODE",(String) hashMap.get("PANTS_CODE"));
				map.put("PRODUCT_NUM",(Double)hashMap.get("PRODUCT_NUM"));
				map.put("PRODUCT_COUNT",hashMap.get("product_count"));
				
				try {
					productDao.createOne(map);
				} catch (Exception e) {
					e.printStackTrace();
				}
				Cart cart = new Cart(0, (String) hashMap.get("PRODUCT_CODE"), loginId.getValue());
				cartDao.createCart(cart);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		System.out.println("동일 : " + sameList.size());
		System.out.println("수정 : " + updateList.size());
		System.out.println("지움 : " + deleteList.size());
		System.out.println("추가 : " + insertList.size());
		
		
		// 기존 DB
		List<HashMap<String, Object>> listDBForWish = wishlistDao.listWishesForLogin(loginId.getValue());

		List<HashMap<String, Object>> sameListForWish = new ArrayList<HashMap<String, Object>>();

		List<HashMap<String, Object>> updateListForWish = new ArrayList<HashMap<String, Object>>();

		List<HashMap<String, Object>> deleteListForWish = new ArrayList<HashMap<String, Object>>();

		List<HashMap<String, Object>> insertListForWish = new ArrayList<HashMap<String, Object>>();
        /*
		if (listDB.isEmpty()) {
			for (HashMap<String, Object> hashMap : listCarts) {
				
				//위시리스트 : wishlist_num,customer_id,product_num
				  
				Double temp = (Double) (hashMap.get("PRODUCT_NUM"));
				Double temp2 = (Double) (hashMap.get("product_count"));
				
				System.out.println("##$$"+ temp);
				System.out.println("$%^$%^"+ temp2);
				
				Integer Temp = Integer.parseInt(String.valueOf(Math.round(temp)));
				Integer Temp2 = Integer.parseInt(String.valueOf(Math.round(temp2)));

				Map map = new HashMap();
				map.put("PRODUCT_CODE",(String) hashMap.get("PRODUCT_CODE"));
				map.put("JACKET_CODE",(String) hashMap.get("JACKET_CODE"));
				map.put("PANTS_CODE",(String) hashMap.get("PANTS_CODE"));
				map.put("PRODUCT_NUM",Temp);
				map.put("PRODUCT_COUNT",Temp2);
				
				System.out.println("derwr3r3we Jacket :" + (String) hashMap.get("JACKET_CODE") );
				System.out.println("derwr3r3we Pants :" + (String) hashMap.get("PANTS_CODE") );
				
				//product.setProductNum(Temp);
				//product.setProductCount(Temp2);

				// 실험 필요
				try {
					productDao.createOne(map);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				cartDao.createCart((String) hashMap.get("PRODUCT_CODE"), loginId.getValue());
			}
		} else {
			for (HashMap<String, Object> hashMap : listDB) {
				for (HashMap<String, Object> hashMapForCart : listCarts) {
					if (hashMap.get("PRODUCT_NAME").equals(hashMapForCart.get("PRODUCT_NAME"))) {
						if ((hashMap.get("PRODUCT_COUNT") + ".0").equals((hashMapForCart.get("product_count") + ""))) {
							// 상품제목 O, 상품수량 O
							System.out.println("상품제목 O, 상품수량 O");
							sameList.add(hashMap);
						} else {
							// 상품제목 O, 상품수량 X
							updateList.add(hashMap);
							System.out.println("상품제목 O, 상품수량 X");
							// cartDao.updateCart((String) hashMap.get("CART_NUM"), (String)
							// hashMap.get("PRODUCT_COUNT"));
						}


					} else {
						System.out.println("실패");
					}
				}
			}
		}
		*/
		return null;
	}

	@Override
	public Customer getCustomerInfo(String customerId) throws Exception {
		return customerDao.getCustomerInfo(customerId);
	}
}
