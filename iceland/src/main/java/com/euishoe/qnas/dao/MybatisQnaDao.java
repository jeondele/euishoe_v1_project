package com.euishoe.qnas.dao;

import org.apache.ibatis.session.SqlSessionFactory;

public class MybatisQnaDao implements QnaDao {
	
	private static final String NAMESPACE = "com.euishoe.Qna.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	//board에 대한 기능들
}










