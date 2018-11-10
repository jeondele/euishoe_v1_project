package com.euishoe.deliveries.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.euishoe.deliveries.dto.Delivery;

public class MybatisDeliveryDao implements DeliveryDao {
	
	private static final String NAMESPACE = "com.euishoe.Delivery.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public boolean insertDelivery(Delivery delivery) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int result = 0 ;
		result = sqlSession.insert(NAMESPACE+"insertDelivery", delivery);
		sqlSession.commit();
		sqlSession.close();
		if(result != 0 ) return true; else return false;
	}
	
	@Override
	public List<Delivery> deliveryInfo(int orderNum) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Delivery> list = null;
		list = sqlSession.selectList(NAMESPACE+"deliveryInfo", orderNum);
		sqlSession.commit();
		sqlSession.close();
		return list;
	}
}










