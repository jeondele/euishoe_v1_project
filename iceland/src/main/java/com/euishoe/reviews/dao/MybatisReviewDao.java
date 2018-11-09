package com.euishoe.reviews.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
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
	public void create() throws Exception {
	}

	@Override
	public List<Review> reviewListAll(int productNum) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Review> list = sqlSession.selectList(NAMESPACE+"selectAllReview", productNum);
		return list;
	}

	@Override
	public List<Review> reviewListByCustomerId(int productNum, String customerId) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("productNum", productNum);
		params.put("customerId", customerId);
		List<Review> list = sqlSession.selectList(NAMESPACE + "selectReviewUserById", params);
		return list;
	}

	@Override
	public List<Review> reviewListByScore(int productNum, int reviewScore) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("productNum", productNum);
		params.put("reviewScore", reviewScore);
		List<Review> list = sqlSession.selectList(NAMESPACE+"selectReviewByScore", params);
		return list;
	}

	@Override
	public void deleteReview(int reviewNum) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.delete(NAMESPACE + "deleteReview", reviewNum);
		sqlSession.commit();
		sqlSession.close();
		
	}


}










