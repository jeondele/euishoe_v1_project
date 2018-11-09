package com.euishoe.compositecart.test;

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

import com.euishoe.carts.dao.CartDao;
import com.euishoe.carts.dao.MybatisCartDao;

public class MybatisCartDaoTest {
	private static final String NAMESPACE = "com.euishoe.cart.";
	String resource = "mybatis-config.xml";
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
	
//	@Test
//	public void listAll() {
//		SqlSession sqlSession = sqlSessionFactory.openSession();
//		List<CompositeCart> list = sqlSession.selectList(NAMESPACE+"listAll");
//		for (CompositeCart object : list) {
//			logger.debug("들어있는 값??"+object);
//		}
//		sqlSession.commit();
//		sqlSession.close();
//	}
	
	@Test
	public void listAll() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Map<String, Object>> list = sqlSession.selectList(NAMESPACE+"listAll");
		for (Map<String, Object> object : list) {
			logger.debug("들어있는 값??"+object);
		}
		sqlSession.commit();
		sqlSession.close();
	}
	
}
