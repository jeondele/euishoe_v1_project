package com.euishoe.customers.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.euishoe.customers.dto.Customer;

public class MybatisCustomerDao implements CustomerDao {
	
	private static final String NAMESPACE = "com.euishoe.customers.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public Customer certify(String customerId, String customerPassword) throws Exception {
		Customer customer = null;
		Map<String, String> params = new HashMap<String, String>();
		// 매개변수로 전달할 HashMap 형태의 params 객체 생성(customerId, customerPassword를 담는 객체)
		params.put("customerId", customerId);
		params.put("customerPassword", customerPassword);
		SqlSession sqlSession = sqlSessionFactory.openSession();
		customer = sqlSession.selectOne(NAMESPACE + "certify", params);
		sqlSession.close();
		return customer;
	}
	
	
}










