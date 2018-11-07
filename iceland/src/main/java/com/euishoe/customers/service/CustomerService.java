package com.euishoe.customers.service;

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
}
