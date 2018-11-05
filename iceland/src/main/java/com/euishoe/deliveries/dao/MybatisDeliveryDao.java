package com.euishoe.deliveries.dao;

import org.apache.ibatis.session.SqlSessionFactory;

public class MybatisDeliveryDao implements DeliveryDao {
	
	private static final String NAMESPACE = "com.euishoe.Delivery.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
}










