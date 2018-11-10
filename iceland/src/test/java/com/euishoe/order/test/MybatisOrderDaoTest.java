package com.euishoe.order.test;

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
import com.euishoe.products.dto.ProductInfo;
import com.euishoe.wishlists.dao.MybatisWishlistDao;
import com.euishoe.wishlists.dao.WishlistDao;
import com.euishoe.wishlists.dto.Wishlist;

public class MybatisOrderDaoTest {
	private static final String NAMESPACE = "com.euishoe.order.";
	String resource = "mybatis-config.xml";
	SqlSessionFactory sqlSessionFactory;

	Logger logger = Logger.getLogger(MybatisOrderDaoTest.class);
	WishlistDao wishlistDao;

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
		wishlistDao = new MybatisWishlistDao();
		((MybatisWishlistDao) wishlistDao).setSqlSessionFactory(sqlSessionFactory);

	}
	
	@Test
	public void testInsertOrder() {
		String customerId = "bangry";
		int productNum = 3;
		Map<String, Object> params = new HashMap<>();
		params.put("customerId", customerId);
		params.put("deliveryNum", productNum);
		params.put("paymentNum", 2);
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.selectOne(NAMESPACE + "orderCreate", params);
		sqlSession.commit();
		sqlSession.close();
	}
	

	//@Test
	public void selectOrderList() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Map<String,Object>> list = null;
		list = sqlSession.selectList(NAMESPACE+"selectOrderInfo", 1);
		for (Map<String, Object> map : list) {
			logger.debug(map);
		}
		sqlSession.commit();
		sqlSession.close();
	}
}
