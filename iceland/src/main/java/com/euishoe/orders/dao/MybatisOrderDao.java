package com.euishoe.orders.dao;

import org.apache.ibatis.session.SqlSessionFactory;

public class MybatisOrderDao implements OrderDao {
	
	private static final String NAMESPACE = "com.euishoe.Order.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
}










