package com.euishoe.points.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.euishoe.points.dto.PointHistory;

public class MybatisPointDao implements PointDao {
	
	private static final String NAMESPACE = "com.euishoe.point.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public void create(String customerId) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.insert(NAMESPACE+"create", customerId);
		sqlSession.commit();
		sqlSession.close();
	}

	@Override
	public List<PointHistory> CustomerPointList(String customerId) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<PointHistory> list = sqlSession.selectList(NAMESPACE + "selectPointHistoryById", customerId);
		sqlSession.close();
		return list;
	}
}










