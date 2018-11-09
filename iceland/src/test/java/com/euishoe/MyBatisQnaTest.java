package com.euishoe;

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
import com.euishoe.qnas.dto.Qna;


public class MyBatisQnaTest {
	private static final String NAMESPACE = "com.euishoe.Qna.";
	String resource = "mybatis-config.xml";
	SqlSessionFactory sqlSessionFactory;
	
	Logger logger = Logger.getLogger(MyBatisQnaTest.class);
	
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
	public void testCreateQna() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("qnaTypeNum", 1);
		params.put("customerId", "bangry");
		params.put("productNum", 1);
		params.put("qnaTitle", "리뷰 테스트 !!!");
		params.put("qnaContent", "과연 이 프로젝트는 어디까지,,?");
		params.put("qnaPassword", "2412");
		params.put("qnaIsLock", "N");
		sqlSession.insert(NAMESPACE+"createQna1", params);
		sqlSession.commit();
		logger.debug("리뷰 작성 완료!");
		sqlSession.close();
	}
	
	
	//@Test
	public void testCreateQna2() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Qna qna = new Qna(1, "bangry", 2,  "2번 제품 테스트", "가보자", "4444", "Y", 0);
		sqlSession.insert(NAMESPACE+"createQna2", qna);
		sqlSession.commit();
		logger.debug("문의글 작성 완료!");
		sqlSession.close();
	}
	
	@Test
	public void testQnaListAll() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Qna> list = sqlSession.selectList(NAMESPACE+"selectAllQna", 1);
		for (Qna qna : list) {
	    	  logger.debug(qna);
	      }
		logger.debug("조회 완료!");
		sqlSession.close();
	}
	
	
	//@Test
	public void testListByCustomerId() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("productNum", 2);
		params.put("customerId", "bangry");
		List<Qna> list = sqlSession.selectList(NAMESPACE + "selectQnaUserById", params);
	      for (Qna qna : list) {
	    	  logger.debug(qna);
	      }
		logger.debug("조회 완료!");
		sqlSession.close();
	}
	
	//@Test
	public void testListByIsLock() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Qna> list = sqlSession.selectList(NAMESPACE + "selectQnaByLock", 1);
	      for (Qna qna : list) {
	    	  logger.debug(qna);
	      }
		logger.debug("조회 완료!");
		sqlSession.close();
	}
	
	//@Test
	public void testListByTypeNum() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Integer> params = new HashMap<String, Integer>();
		params.put("productNum", 1);
		params.put("qnaTypeNum", 1);
		List<Qna> list = sqlSession.selectList(NAMESPACE + "selectQnaByType", params);
	      for (Qna qna : list) {
	    	  logger.debug(qna);
	      }
		logger.debug("조회 완료!");
		sqlSession.close();
	}

	//@Test
	public void testRemove() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int qnaNum = 2;
		sqlSession.delete(NAMESPACE + "deleteQna", qnaNum);
		sqlSession.commit();
		logger.debug("삭제 완료!");
		sqlSession.close();
	}
	
	
}
