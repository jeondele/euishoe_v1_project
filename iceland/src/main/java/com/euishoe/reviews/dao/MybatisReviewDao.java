package com.euishoe.reviews.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.euishoe.reviews.dto.Review;

import kr.or.kosta.blog.common.web.Params;

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
	public List<Review> reviewListAll(int productNum, Params params) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("productNum", productNum);
		param.put("listSize", params.getListSize());
		param.put("page", params.getPage());
		List<Review> list = sqlSession.selectList(NAMESPACE+"selectAllReview", param);
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
	public List<Review> searchReview(Params params) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countBySearch(Params params) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}


}










