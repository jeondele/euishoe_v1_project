package com.euishoe.customers.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.euishoe.customers.dto.Customer;

import oracle.net.aso.s;

public class MybatisCustomerDao implements CustomerDao {
	
	private static final String NAMESPACE = "com.euishoe.customers.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	// 로그인 인증
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

	// 회원가입
	@Override
	public void create(Customer customer) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.insert(NAMESPACE+"create", customer);
		sqlSession.commit();
		sqlSession.close();
	}

	@Override
	public Customer getCustomerInfo(String customerId) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Customer customer = sqlSession.selectOne(NAMESPACE+"getCustomerInfo", customerId);
//		sqlSession.commit();
		sqlSession.close();
		return customer;
	}

	@Override
	public void modifyInfo(Customer customer) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.update(NAMESPACE+"modifyInfo", customer);
		sqlSession.commit();
		sqlSession.close();
		
	}

}










