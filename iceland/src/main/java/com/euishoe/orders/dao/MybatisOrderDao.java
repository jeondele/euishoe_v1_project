package com.euishoe.orders.dao;

import java.util.HashMap;
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
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int result = sqlSession.insert(NAMESPACE+"create", order);
		if(result == 0 )return false;
		else return true;
	}

	@Override
	public boolean insertOrderByProduct(OrderByProduct orderByProduct) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int result = sqlSession.insert(NAMESPACE+"insertOrderByProduct", orderByProduct);
		if(result == 0 ) return false;
		else return true;
	}

	@Override
	public int selectMaxNextValOrder() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int result = sqlSession.selectOne(NAMESPACE+"selectMaxNextValOrder");
		return result;
	}

	@Override
	public boolean updateJacket(String jacketCode, int productCount) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("jacketCode", jacketCode);
		params.put("productCount", productCount);
		int result = sqlSession.update(NAMESPACE+"updateJacket", params);
		if(result == 0) {
			return false;
		} else {
			return true;
		}
	}
	
	@Override
	public boolean updatePants(String pantsCode, int productCount) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("pantsCode", pantsCode);
		params.put("productCount", productCount);
		int result = sqlSession.update(NAMESPACE+"updatePants", params);
		if(result == 0) {
			return false;
		} else {
			return true;
		}
	}
}










