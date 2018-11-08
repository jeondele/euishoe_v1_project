package com.euishoe.carts.dao;

import java.util.ArrayList;
import java.util.HashMap;
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
		List<Cart> list = new ArrayList<Cart>();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		list = sqlSession.selectList(NAMESPACE + "listCart");
		sqlSession.close();
		return list;
	}

	@Override
	public void createCart(String cartNum,String productCode,String customerId) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("cartNum",cartNum);
		params.put("productCode",productCode);
		params.put("customerId",customerId);
		
	}

	@Override
	public void deleteCart(String cartNum) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("cartNum",cartNum);
	}
}










