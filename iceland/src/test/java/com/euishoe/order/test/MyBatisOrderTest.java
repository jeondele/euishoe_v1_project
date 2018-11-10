package com.euishoe.order.test;

import java.io.IOException;
import java.io.Reader;
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

public class MyBatisOrderTest {
	private static final String NAMESPACE = "com.euishoe.order.";
	String resource = "mybatis-config.xml";
	SqlSessionFactory sqlSessionFactory;
	
	Logger logger = Logger.getLogger(MyBatisOrderTest.class);
	
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
	
	@Test
	public void testCreate() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Map<String, Object>> list = null;
		int orderNum = 1;
		list = sqlSession.selectList(NAMESPACE+"selectOrderInfo", orderNum);
		sqlSession.commit();
		sqlSession.close();
		for (Map<String, Object> map : list) {
			logger.debug(map);	
		}
		logger.debug("주문번호로 리스트 추출 완료!!!!!!!");
	}
	
	
	
	
	
	
}
