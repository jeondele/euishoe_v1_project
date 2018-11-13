package com.euishoe.product.test;

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
import com.euishoe.common.web.FilterParam;
import com.euishoe.customers.dto.Customer;


public class MyBatisProductTest {
	private static final String NAMESPACE = "com.euishoe.products.";
	String resource = "mybatis-config.xml";
	SqlSessionFactory sqlSessionFactory;
	
	Logger logger = Logger.getLogger(MyBatisProductTest.class);
	
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
	
	/*@Test
	public void testFilter() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Map<String, Object>> params = null;
		FilterParam filterParam= new FilterParam("bizcasual", null, "100000", "150000", null, null,0, 0, 0, 0, null, null, null);
		params = sqlSession.selectList(NAMESPACE+"filter", filterParam);
		for (Map<String, Object> map : params) {
			logger.debug(map);
		}
		sqlSession.commit();
		sqlSession.close();
	}*/
	
	//@Test
	public void testFilter() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Map<String, Object>> params = null;
		params = sqlSession.selectList(NAMESPACE+"newProductList");
		for (Map<String, Object> map : params) {
			logger.debug(map);
		}
		sqlSession.commit();
		sqlSession.close();
	}
	
//	@Test
//	public void testFilter2() {
//		
//		productDao.create
//		SqlSession sqlSession = sqlSessionFactory.openSession();
//		List<Map<String, Object>> params = null;
//		params = sqlSession.selectList(NAMESPACE+"newProductList");
//		
//		
//		for (Map<String, Object> map : params) {
//			logger.debug(map);
//		}
//		sqlSession.commit();
//		sqlSession.close();
//	}

}
