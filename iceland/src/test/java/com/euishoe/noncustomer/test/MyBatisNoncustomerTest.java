package com.euishoe.noncustomer.test;

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
import com.euishoe.noncustomers.dto.Noncustomer;
import com.euishoe.points.dto.PointHistory;


public class MyBatisNoncustomerTest {
	private static final String NAMESPACE = "com.euishoe.noncustomer.";
	String resource = "mybatis-config.xml";
	SqlSessionFactory sqlSessionFactory;
	
	Logger logger = Logger.getLogger(MyBatisNoncustomerTest.class);
	
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
	public void testCustomerPoint() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		String noncustomerEmail = "123@naver.com";
		String noncustomerName = "bangry";
		String noncustomerPassword = "1234";
		String noncustomerPhonenumber = "01066421489";
		Noncustomer noncustomer = new Noncustomer(noncustomerEmail, noncustomerName, noncustomerPassword, noncustomerPhonenumber);
		sqlSession.insert(NAMESPACE + "insertNoncustomer", noncustomer);
		logger.debug("삽입 완료!");
		sqlSession.commit();
		sqlSession.close();
	}
	
	
}
