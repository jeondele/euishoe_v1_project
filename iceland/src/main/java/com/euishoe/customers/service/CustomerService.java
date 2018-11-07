package com.euishoe.customers.service;

import com.euishoe.customers.dto.Customer;

/**
 * 쇼핑몰 고객과 관련된 서비스 인터페이스
 * 
 * @author 전상일
 *
 */
public interface CustomerService {
	
	// 로그인시 회원 여부 인증
	public Customer certify(String customerId, String customerPassword) throws Exception;
	
}
