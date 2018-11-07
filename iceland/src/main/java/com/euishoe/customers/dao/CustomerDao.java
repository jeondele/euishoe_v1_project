package com.euishoe.customers.dao;

import com.euishoe.customers.dto.Customer;

/**
 * 쇼핑몰 고객과 관련된 Dao 인터페이스
 * 
 * @author 전상일
 *
 */
public interface CustomerDao {
	// 회원가입(customer객체 생성)
	public void create(Customer customer) throws Exception;
}
