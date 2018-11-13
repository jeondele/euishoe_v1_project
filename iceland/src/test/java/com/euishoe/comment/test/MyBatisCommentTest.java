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

import com.euishoe.comments.dto.Comment;
import com.euishoe.customers.dto.Customer;


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
	
	//@Test
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
	
	//@Test
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
	
	@Test
	public void testSelectReviewComment() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int productNum = 1;
		List<HashMap<String, Object>> list = sqlSession.selectList(NAMESPACE+"selectComment", 1);
			for (HashMap<String, Object> hashMap : list) {
		    	  logger.debug(hashMap);
			}
		sqlSession.close();
	}
	
	//@Test
	public void testSelectQnaComment() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int qnaNum = 2;
		Comment comment = sqlSession.selectOne(NAMESPACE+"selectQnaComment", qnaNum);
	    	  logger.debug(comment);
		logger.debug("조회 완료!");
		sqlSession.close();
	}
}
