package com.euishoe.carts.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.euishoe.carts.dto.Cart;
import com.euishoe.products.dto.ProductInfo;

public class MybatisCartDao implements CartDao {
	
	private static final String NAMESPACE = "com.euishoe.compositecart.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public void createCart(Cart cart) {
	}

	@Override
	public void deleteCart(int cartNum) {
	}

	@Override
	public List<Map<String, Object>> listCart() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Map<String, Object>> list = null;
		list = sqlSession.selectList(NAMESPACE+"listAll");
		sqlSession.commit();
		sqlSession.close();
		return list;
	}
}










