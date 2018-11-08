package com.euishoe.carts.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.euishoe.carts.dto.Cart;

public class MybatisCartDao implements CartDao {
	
	private static final String NAMESPACE = "com.euishoe.cart.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<Cart> listCart() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		return sqlSession.selectList(NAMESPACE + "listCart");
	}

	@Override
	public void createCart(String cartNum, String productCode, String customerId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteCart(String cartNum) {
		// TODO Auto-generated method stub
		
	}
}










