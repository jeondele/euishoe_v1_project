package com.euishoe.carts.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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
	public List<Map<Integer, Cart>> listCart() {
		Cart cart = null;
		
		List<Map<Integer,Cart>> list = new ArrayList<Map<Integer,Cart>>();
		
		return null;
	}

	@Override
	public void createCart(Cart cart) {
		
	}

	@Override
	public void deleteCart(int cartNum) {
		
	}
}










