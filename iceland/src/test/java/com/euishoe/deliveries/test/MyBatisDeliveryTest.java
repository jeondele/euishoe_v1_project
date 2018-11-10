package com.euishoe.deliveries.test;

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
import com.euishoe.deliveries.dto.Delivery;

public class MyBatisDeliveryTest {
	private static final String NAMESPACE = "com.euishoe.delivery.";
	String resource = "mybatis-config.xml";
	SqlSessionFactory sqlSessionFactory;
	
	Logger logger = Logger.getLogger(MyBatisDeliveryTest.class);
	
	@Before
	public void setup() {
		Reader reader = null;
		try {
			reader = Resources.getResourceAsReader(resource);
		} catch (IOException e) {
			e.printStackTrace();
		}
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader, "development");
		logger.debug("[logger debug]: sqlSessionFactory생성완료");
	}
	
	@Test
	public void testCreate() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Delivery delivery = new Delivery("경기도 용인시", "상일이", "01066421489", "집 밖에 놔주세요", "20181109", "20181112", "배송중");
		sqlSession.insert(NAMESPACE+"insertDelivery", delivery);
		sqlSession.commit();
		logger.debug("create customer완료!!!!!!!");
		sqlSession.close();
	}
	
	
	
	
	
	
}
