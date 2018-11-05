package com.euishoe.payments.dao;

import org.apache.ibatis.session.SqlSessionFactory;

public class MybatisPaymentDao implements PaymentDao {
	
	private static final String NAMESPACE = "com.euishoe.Payment.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
}










