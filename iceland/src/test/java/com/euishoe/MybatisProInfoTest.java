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

import com.euishoe.customers.dao.CustomerDao;
import com.euishoe.customers.dao.MybatisCustomerDao;
import com.euishoe.customers.dto.Customer;

public class MybatisProInfoTest {
	private static final String NAMESPACE = "com.euishoe.products.";
	String resource = "mybatis-config.xml"; // resource 밑에 바로 있으니까 상대경로
	SqlSessionFactory sqlSessionFactory;

	Logger logger = Logger.getLogger(MybatisProInfoTest.class);
	CustomerDao customerDao;

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
		customerDao = new MybatisCustomerDao();
		((MybatisCustomerDao) customerDao).setSqlSessionFactory(sqlSessionFactory);
	}
	
//	@Test
//	public void newProductTest() {
//		List<Map<String, Object>> list = null;
//		SqlSession sqlSession = sqlSessionFactory.openSession();
//		list = sqlSession.selectList(NAMESPACE+"newProductList");
//		System.out.println("사이즈!!!!!!!!!"+list.size());
//		
//		for (Map<String, Object> productInfo : list) {
//			logger.debug("----------------");
//			logger.debug("제품정보객체: " + productInfo);
//			/*logger.debug("제품정보객체: "+productInfo);
//			logger.debug("이미지정보: "+productInfo.getImage().getImageRef());*/
//			logger.debug("----------------");
//		}
//	}
	
	@Test
	public void newProductTest() {
		List<Map<String, Object>> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		list = sqlSession.selectList(NAMESPACE+"selectAll");
		System.out.println("사이즈!!!!!!!!!"+list.size());
		
		for (Map<String, Object> productInfo : list) {
			logger.debug("----------------");
			logger.debug("제품정보객체: " + productInfo);
			/*logger.debug("제품정보객체: "+productInfo);
			logger.debug("이미지정보: "+productInfo.getImage().getImageRef());*/
			logger.debug("----------------");
		}
	}
	
	//@Test
	// 매개변수 하나 전달 : 사원번호 100번인 사람의 salary
	public void testCertify() {
		String customerId = "bangry";
		String customerPassword = "1958";
		Map<String, String> params = new HashMap<>();
		params.put("customerId", customerId);
		params.put("customerPassword", customerPassword);
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Customer customer = sqlSession.selectOne(NAMESPACE + "certify", params);
		logger.debug(customer);
		sqlSession.close();
	}
}
