package com.euishoe;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;

import com.euishoe.customers.dto.Customer;

public class MyBatisCustomerTest {
	private static final String NAMESPACE = "com.euishoe.customers.";
	String resource = "mybatis-config.xml";
	SqlSessionFactory sqlSessionFactory;
	
	Logger logger = Logger.getLogger(MyBatisCustomerTest.class);
	
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
//		Customer customer = new Customer("testId", "testName", "1234", "010-1234-5678", "test@test.com", "testAddress", "111", "2018.11.07", "F", "95", "28", "170~175");
		SqlSession sqlSession = sqlSessionFactory.openSession();
//		sqlSession.insert(NAMESPACE+"create", customer);
		sqlSession.commit();
		logger.debug("create customer완료!!!!!!!");
		sqlSession.close();
	}
	
	
	
	
	
	
}
