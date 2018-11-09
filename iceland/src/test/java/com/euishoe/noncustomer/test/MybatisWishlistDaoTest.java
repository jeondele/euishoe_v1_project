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

import com.euishoe.customers.dao.CustomerDao;
import com.euishoe.customers.dao.MybatisCustomerDao;
import com.euishoe.customers.dto.Customer;
import com.euishoe.products.dto.ProductInfo;
import com.euishoe.wishlists.dao.MybatisWishlistDao;
import com.euishoe.wishlists.dao.WishlistDao;
import com.euishoe.wishlists.dto.Wishlist;

public class MybatisWishlistDaoTest {
	private static final String NAMESPACE = "com.euishoe.wishlist.";
	String resource = "mybatis-config.xml";
	SqlSessionFactory sqlSessionFactory;

	Logger logger = Logger.getLogger(MybatisWishlistDaoTest.class);
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
	
	//고객의 아이디와 , 상품번호를 받아서 wishlist table에 집어넣는 메소드 테스트
//	@Test
	public void testInsertWishlist() {
		String customerId = "bangry";
		int productNum = 3;
		Map<String, Object> params = new HashMap<>();
		params.put("customerId", customerId);
		params.put("productNum", productNum);
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.selectOne(NAMESPACE + "insertWishlist", params);
		sqlSession.commit();
		sqlSession.close();
	}
	
	//고객의 아이디와 , 상품번호를 받아서 select 값이 있는지 없는지 확인하는 작업 테스트
//	@Test
	public void canAddToWishlist() {
		String customerId = "bangry";
		int productNum = 3;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("customerId", customerId);
		params.put("productNum", productNum);
		List<Integer> list = sqlSession.selectList(NAMESPACE+"certifyWishlist", params);
		if(list == null) return;
		for (int wishlistNum : list) {
			logger.debug("들어있는 값??"+wishlistNum);
		}
		sqlSession.commit();
		sqlSession.close();
	}
	
	//고객의 아이디로 , 상품목록 뿌리는 테스트
	//@Test
	public void selectWishlists() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<ProductInfo> list = null;
		String customerId = "bangry";
		list = sqlSession.selectList(NAMESPACE+"selectWishlists", customerId);
		for (ProductInfo productInfo : list) {
			logger.debug("들어있는 값??"+productInfo);
		}
		sqlSession.commit();
		sqlSession.close();
	}
	//고객의 아이디로 , 해당 찜목록 삭제
	//@Test
	public void deleteWishlist() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> params = new HashMap<String, Object>();
		String customerId = "bangry";
		int productNum = 3;
		params.put("customerId", customerId);
		params.put("productNum", productNum);
		sqlSession.update(NAMESPACE+"deleteWishlist", params);
		sqlSession.commit();
		sqlSession.close();
	}
}
