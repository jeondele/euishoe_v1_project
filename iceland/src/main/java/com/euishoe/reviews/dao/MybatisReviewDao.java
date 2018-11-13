package com.euishoe.reviews.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.euishoe.common.web.Params;
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
	public void create(Review review) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.insert(NAMESPACE+"createReview2", review);
		sqlSession.commit();
		sqlSession.close();
	}

	@Override
	public List<HashMap<String,Object>> reviewDynamicReviewList(int productNum, String customerId, int reviewScore, Params params) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("productNum", productNum);
		param.put("customerId", customerId);
		param.put("reviewScore", reviewScore);
		param.put("listSize", params.getListSize());
		param.put("page", params.getPage());
		List<HashMap<String,Object>> list = sqlSession.selectList(NAMESPACE+"selectDynamicReviewList", param);
		return list;
	}

	@Override
	public List<Review> reviewListByCustomerId(int productNum, String customerId, Params params) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("productNum", productNum);
		param.put("customerId", customerId);
		param.put("listSize", params.getListSize());
		param.put("page", params.getPage());
		List<Review> list = sqlSession.selectList(NAMESPACE + "selectReviewUserById", param);
		return list;
	}

	@Override
	public List<Review> reviewListByScore(int productNum, int reviewScore, Params params) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("productNum", productNum);
		param.put("reviewScore", reviewScore);
		param.put("listSize", params.getListSize());
		param.put("page", params.getPage());
		List<Review> list = sqlSession.selectList(NAMESPACE+"selectReviewByScore", param);
		return list;
	}

	@Override
	public void deleteReview(int reviewNum) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.delete(NAMESPACE + "deleteReview", reviewNum);
		sqlSession.commit();
		sqlSession.close();
		
	}

	@Override
	public int countBySearch(int productNum) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int count = sqlSession.selectOne(NAMESPACE + "countBySearch", productNum);
		return count;
	}




}










