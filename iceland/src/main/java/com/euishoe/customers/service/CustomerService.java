package com.euishoe.customers.service;

import java.util.HashMap;
import java.util.List;

import com.euishoe.customers.dto.Customer;

/**
 * 쇼핑몰 고객과 관련된 서비스 인터페이스
 * 
 * @author 전상일, 박시원, 백욱기
 *
 */
public interface CustomerService {
	
	// 로그인시 회원 여부 인증
	public Customer certify(String customerId, String customerPassword) throws Exception;
	
	// 회원 가입 
	public void create(Customer customer) throws Exception;
	
	// 장바구니 가져오기
	public List<HashMap<String, Object>> listCartForLogin(String customerId);
	
	// 위시리스트 가져오기
	public List<HashMap<String, Object>> listWish(String customerId);
}
