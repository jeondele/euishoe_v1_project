package com.euishoe.carts.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.euishoe.carts.dto.Cart;
import com.euishoe.products.dto.ProductInfo;

public class MybatisCartDao implements CartDao {
	
	private static final String NAMESPACE = "com.euishoe.carts.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<HashMap<String, Object>> listCart() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<HashMap<String,Object>> list = sqlSession.selectList(NAMESPACE + "listAll");
		return list;
	}
	
	@Override
	public List<HashMap<String, Object>> listCartForLogin(String customer_id) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<HashMap<String,Object>> list = sqlSession.selectList(NAMESPACE + "listCartForLogin", customer_id);
		return list;
	}

	@Override
	public void createCart(String cartNum, String productCode, String customerId) {
		
	}

	@Override
	public void deleteCart(String cartNum) {

	}
	
	public void createCart(Cart cart) {
	}

	@Override
	public void updateCart(String cartNum) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateCart(String cartNum, Object object2) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void createCart(String productCode, String customerId) {
		// TODO Auto-generated method stub
		
	}

}










