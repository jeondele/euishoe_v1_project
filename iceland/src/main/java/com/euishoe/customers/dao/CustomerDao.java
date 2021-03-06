package com.euishoe.customers.dao;

import com.euishoe.customers.dto.Customer;

/**
 * 쇼핑몰 고객과 관련된 Dao 인터페이스
 * 
 * @author 전상일
 *
 */
public interface CustomerDao {
	
	// 회원인지 여부를 인증하는 메소드 
	public Customer certify(String customerId, String customerPassword) throws Exception;

}
