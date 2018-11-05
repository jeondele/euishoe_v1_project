package com.euishoe.customers.dao;

import org.apache.ibatis.session.SqlSessionFactory;

public class MybatisCustomerDao implements CustomerDao {
	
	private static final String NAMESPACE = "com.euishoe.customer.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
}










