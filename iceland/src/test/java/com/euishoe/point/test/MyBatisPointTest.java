package com.euishoe.point.test;

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


public class MyBatisPointTest {
	private static final String NAMESPACE = "com.euishoe.PointHistory.";
	String resource = "mybatis-config.xml";
	SqlSessionFactory sqlSessionFactory;
	
	Logger logger = Logger.getLogger(MyBatisPointTest.class);
	
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
	public void testCreate1() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		String customerId = "bangry";
		sqlSession.insert(NAMESPACE+"joinPointCreate", customerId);
		sqlSession.commit();
		logger.debug("포인트 지급 완료!");
		sqlSession.close();
	}
	
	//@Test
	public void testCreate2() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		String customerId = "bangry";
		sqlSession.insert(NAMESPACE+"birthPointCreate", customerId);
		sqlSession.commit();
		logger.debug("포인트 지급 완료!");
		sqlSession.close();
	}
	
	//@Test
	public void testCreate3() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		 Map<String, Object> params = new HashMap<String, Object>();
		String customerId = "bangry";
		int money = 10000;
		params.put("customerId", customerId);
		params.put("pointHistoryScore", (int)(money * 0.05));
		sqlSession.insert(NAMESPACE+"purchasePointCreate", params);
		sqlSession.commit();
		logger.debug("포인트 지급 완료!");
		sqlSession.close();
	}
	
	@Test
	public void testCustomerPoint() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		String customerId = "bangry";
		List<Map<String, Object>> list = sqlSession.selectList(NAMESPACE + "selectPointHistoryById", customerId);
	      for (Map<String, Object> Map : list) {
	    	  logger.debug(Map);
	      }
		logger.debug("조회 완료!");
		sqlSession.close();
	}
}
