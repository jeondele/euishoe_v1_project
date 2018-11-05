package com.euishoe.images.dao;

import org.apache.ibatis.session.SqlSessionFactory;

public class MybatisImageDao implements ImageDao {
	
	private static final String NAMESPACE = "com.euishoe.Image.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	//board에 대한 기능들
}










