package com.euishoe.customers.service;
/**
 * 쇼핑몰 고객과 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */

import com.euishoe.customers.dao.CustomerDao;
import com.euishoe.customers.dto.Customer;

public class CustomerServiceImpl implements CustomerService {
	private CustomerDao customerDao;

	public CustomerDao getCustomerDao() {
		return customerDao;
	}

	public void setCustomerDao(CustomerDao customerDao) {
		this.customerDao = customerDao;
	}

	@Override
	public Customer certify(String customerId, String customerPassword) throws Exception {
		return customerDao.certify(customerId, customerPassword);
	}
	
	
	
	
	
}
