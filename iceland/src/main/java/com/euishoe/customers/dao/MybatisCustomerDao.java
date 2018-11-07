package com.euishoe.customers.dao;

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

	// 회원가입
	@Override
	public void create(Customer customer) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.insert(NAMESPACE+"create", customer);
		sqlSession.commit();
		sqlSession.close();
	}
}










