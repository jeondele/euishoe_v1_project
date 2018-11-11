package com.euishoe.review.test;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;

import com.euishoe.customers.dto.Customer;
import com.euishoe.points.dto.PointHistory;
import com.euishoe.reviews.dto.Review;


public class MyBatisReviewTest {
	private static final String NAMESPACE = "com.euishoe.Review.";
	String resource = "mybatis-config.xml";
	SqlSessionFactory sqlSessionFactory;
	
	Logger logger = Logger.getLogger(MyBatisReviewTest.class);
	
	@Before
	public void setup() {
		Reader reader = null;
		try {
			reader = Resources.getResourceAsReader(resource);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader, "development");
		logger.debug("[logger debug]: sqlSessionFactory생성완료");
	}
	
	
	/*#{customerId}, 
    #{productNum}, 
    #{reviewTitle}, 
    #{reviewContent}, 
    #{reviewPassword},
    #{reviewScore}*/
	
	//@Test
	public void testCreateReview() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("customerId", "bangry");
		params.put("productNum", 1);
		params.put("reviewTitle", "리뷰는 재밌오");
		params.put("reviewContent", "최고에요~~~!");
		params.put("reviewPassword", "1111");
		params.put("reviewScore", 5);
		sqlSession.insert(NAMESPACE+"createReview", params);
		sqlSession.commit();
		logger.debug("리뷰 작성 완료!");
		sqlSession.close();
	}
	
	
	//@Test
	public void testCreateReview2() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Review review = new Review("bangry", 1, "리뷰 객체로 전달하기", "우린 잘할겁니다.", "4444", 5);
		sqlSession.insert(NAMESPACE+"createReview2", review);
		sqlSession.commit();
		logger.debug("리뷰 작성 완료!");
		sqlSession.close();
	}
	
	@Test
	public void testListAll() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("listSize", 5);
		params.put("productNum", 1);
		params.put("page", 1);
		params.put("customerId", "bangry");
		params.put("reviewScore", 5);
		List<Review> list = sqlSession.selectList(NAMESPACE+"selectDynamicReviewList", params);
		for (Review review : list) {
	    	  logger.debug(review);
	      }
		logger.debug("조회 완료!");
		sqlSession.close();
	}
	
	
	//@Test
	public void testListByRank() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("listSize", 5);
		params.put("productNum", 1);
		params.put("reviewScore", 5);
		params.put("page", 1);
		List<Review> list = sqlSession.selectList(NAMESPACE+"selectReviewByScore", params);
		for (Review review : list) {
	    	  logger.debug(review);
	      }
		logger.debug("조회 완료!");
		sqlSession.close();
	}

	
	//@Test
	public void testListByCustomer() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("listSize", 5);
		params.put("productNum", 1);
		params.put("customerId", "bangry");
		params.put("page", 1);
		List<Review> list = sqlSession.selectList(NAMESPACE + "selectReviewUserById", params);
	      for (Review review : list) {
	    	  logger.debug(review);
	      }
		logger.debug("조회 완료!");
		sqlSession.close();
	}

	//@Test
	public void testRemove() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int reviewNume = 2;
		sqlSession.delete(NAMESPACE + "deleteReview", reviewNume);
		sqlSession.commit();
		logger.debug("삭제 완료!");
		sqlSession.close();
	}
	
	
}
