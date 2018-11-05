package com.euishoe.reviews.dao;

import org.apache.ibatis.session.SqlSessionFactory;

public class MybatisReviewDao implements ReviewDao {
	
	private static final String NAMESPACE = "com.euishoe.Review.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	//board에 대한 기능들
}










