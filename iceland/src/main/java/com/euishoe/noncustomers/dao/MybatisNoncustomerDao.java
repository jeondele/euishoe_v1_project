package com.euishoe.noncustomers.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.euishoe.deliveries.dto.Delivery;

public class MybatisNoncustomerDao implements NoncustomerDao {
	
	private static final String NAMESPACE = "com.euishoe.Noncustomer.";
	
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
		int result = 0;
		result = sqlSession.insert(NAMESPACE+"insertNoncustomer", delivery);
		sqlSession.commit();
		sqlSession.close();
		if(result != 0 ) return true; else return false;
	}
}










