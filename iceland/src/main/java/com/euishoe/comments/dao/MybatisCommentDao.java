package com.euishoe.comments.dao;

import org.apache.ibatis.session.SqlSessionFactory;

public class MybatisCommentDao implements CommentDao {
	
	private static final String NAMESPACE = "com.euishoe.board.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	//board에 대한 기능들
}










