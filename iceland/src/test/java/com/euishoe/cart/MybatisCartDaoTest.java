package com.euishoe.cart;

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

import com.euishoe.carts.dao.CartDao;
import com.euishoe.carts.dao.MybatisCartDao;
import com.euishoe.carts.dto.Cart;
import com.euishoe.carts.dto.CompositeCart;
import com.euishoe.customers.dao.CustomerDao;
import com.euishoe.customers.dao.MybatisCustomerDao;
import com.euishoe.customers.dto.Customer;

public class MybatisCartDaoTest {
	private static final String NAMESPACE = "com.euishoe.carts.";
	String resource = "mybatis-config.xml"; // resource 밑에 바로 있으니까 상대경로
	SqlSessionFactory sqlSessionFactory;

	Logger logger = Logger.getLogger(MybatisCartDaoTest.class);
	CartDao cartDao;

	@Before
	public void setUp() {
		Reader reader = null;
		try {
			reader = Resources.getResourceAsReader(resource);
		} catch (IOException e) {
			e.printStackTrace();
		}
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader, "development");
		logger.debug("sqlSessionFactory 생성 완료!!!!!!");
		cartDao = new MybatisCartDao();
		((MybatisCartDao) cartDao).setSqlSessionFactory(sqlSessionFactory);
		
	}
	
	
	//@Test
	// 매개변수 하나 전달 : 사원번호 100번인 사람의 salary
	public void testCertify() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List list = sqlSession.selectList(NAMESPACE + "listCart");
		logger.debug(list.get(0));
		System.out.println(list.get(0));
		System.out.println(list.size());
		sqlSession.close();
	}
	
	@Test
	// 매개변수 하나 전달 : 사원번호 100번인 사람의 salary
	public void testlistAll() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<CompositeCart> list = sqlSession.selectList("com.euishoe.compositecart." + "listAll");
		logger.debug(list.get(0).getCustomerId());
		sqlSession.close();
	}
}
