package com.euishoe.reviews.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import com.euishoe.reviews.dto.Review;

public class MybatisReviewDao implements ReviewDao {
	
	private static final String NAMESPACE = "com.euishoe.Review.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public Review create() throws Exception {
		return null;
	}

	@Override
	public List<Review> listAll() throws Exception {
		return null;
	}

	@Override
	public List<Review> CustomerPointList(String customerId) throws Exception {
		return null;
	}

	@Override
	public void deleteReview() throws Exception {
		
	}
}










