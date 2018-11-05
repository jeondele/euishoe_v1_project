package com.euishoe.noncustomers.dao;

import org.apache.ibatis.session.SqlSessionFactory;

public class MybatisNoncustomerDao implements NoncustomerDao {
	
	private static final String NAMESPACE = "com.euishoe.Noncustomer.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
}










