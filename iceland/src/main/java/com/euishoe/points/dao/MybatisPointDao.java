package com.euishoe.points.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.euishoe.points.dto.PointHistory;

public class MybatisPointDao implements PointDao {
	
	private static final String NAMESPACE = "com.euishoe.PointHistory.";
	
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
	public List<HashMap<String, Object>> CustomerPointList(String customerId) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<HashMap<String, Object>> list = sqlSession.selectList(NAMESPACE + "selectPointHistoryById", "bangry");
		return list;
	}

	@Override
	public boolean insertPoint(PointHistory pointHistory) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int result = sqlSession.insert(NAMESPACE + "point_histories", pointHistory);
		if(result == 0 ) {
			return false ;
		} else return true;
	}
}










