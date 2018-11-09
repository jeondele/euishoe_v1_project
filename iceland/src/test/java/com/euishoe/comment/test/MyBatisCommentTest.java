package com.euishoe.comment.test;

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


public class MyBatisCommentTest {
	private static final String NAMESPACE = "com.euishoe.Comment.";
	String resource = "mybatis-config.xml";
	SqlSessionFactory sqlSessionFactory;
	
	Logger logger = Logger.getLogger(MyBatisCommentTest.class);
	
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
	@Test
	public void testCreateReviewComment() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("reviewNum", 2);
		params.put("commentContent", "감사합니다.");
		sqlSession.insert(NAMESPACE+"writeReviewComment", params);
		sqlSession.commit();
		logger.debug("댓글 작성 완료!");
		sqlSession.close();
	}
	
	public void testCreateQNAComment() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("qnaNum", 2);
		params.put("commentContent", "감사합니다.");
		sqlSession.insert(NAMESPACE+"writeQNAComment", params);
		sqlSession.commit();
		logger.debug("댓글 작성 완료!");
		sqlSession.close();
	}
	
	//@Test
	public void testSelectComment() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int reviewNum = 2;
		List<Review> list = sqlSession.selectList(NAMESPACE+"selectAllReview", reviewNum);
		for (Review review : list) {
	    	  logger.debug(review);
	      }
		logger.debug("조회 완료!");
		sqlSession.close();
	}
	
	
	
}
