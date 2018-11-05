package com.euishoe.products.dao;

import org.apache.ibatis.session.SqlSessionFactory;

public class MybatisProductDao implements ProductDao {
	
	private static final String NAMESPACE = "com.euishoe.product.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
}










