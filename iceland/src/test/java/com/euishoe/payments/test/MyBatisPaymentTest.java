package com.euishoe.payments.test;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;

import com.euishoe.customers.dto.Customer;
import com.euishoe.deliveries.dto.Delivery;
import com.euishoe.payments.dto.Payment;

public class MyBatisPaymentTest {
	private static final String NAMESPACE = "com.euishoe.payment.";
	String resource = "mybatis-config.xml";
	SqlSessionFactory sqlSessionFactory;
	
	Logger logger = Logger.getLogger(MyBatisPaymentTest.class);
	
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
	public void testInsertPaymentInfo() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Payment payment = new Payment(0, "카드결제", "N", 0, 10000, 2500);
		sqlSession.insert(NAMESPACE+"insertPayment", payment);
		sqlSession.commit();
		sqlSession.close();
		logger.debug("create customer완료!!!!!!!");
	}
	//@Test
	public void testSelectPaymentInfo() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int orderNum = 1;
		List<Payment> list = null;
		list = sqlSession.selectList(NAMESPACE+"paymentInfo", orderNum);
		for (Payment payment : list) {
			logger.debug(payment);
		}
		sqlSession.commit();
		sqlSession.close();
		logger.debug("create customer완료!!!!!!!");
	}
	
	
	
	
}
