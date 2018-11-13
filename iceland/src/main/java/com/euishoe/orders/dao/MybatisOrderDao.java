package com.euishoe.orders.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.euishoe.orders.dto.Order;
import com.euishoe.orders.dto.OrderByProduct;

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

	@Override //고객이 선택한 상품코드로 orderbyproduct생성
	public void create(String productCode) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.insert(NAMESPACE+"create", productCode);
		sqlSession.commit();
		sqlSession.close();
	}

	@Override
	public boolean insertOrder(Order order) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean insertOrderByProduct(OrderByProduct orderByProduct) {
		// TODO Auto-generated method stub
		return false;
	}
}










