package com.euishoe.orders.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class MybatisOrderDao implements OrderDao {
	
	private static final String NAMESPACE = "com.euishoe.order.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<Map<String, Object>> selectOrderInfo(int orderNum) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Map<String, Object>> list = null;
		list = sqlSession.selectList(NAMESPACE+"selectOrderInfo", orderNum);
		sqlSession.commit();
		sqlSession.close();
		return list;
	}
}










