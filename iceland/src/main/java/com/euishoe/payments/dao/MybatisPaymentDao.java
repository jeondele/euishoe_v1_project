package com.euishoe.payments.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.euishoe.payments.dto.Payment;

public class MybatisPaymentDao implements PaymentDao {
	
	private static final String NAMESPACE = "com.euishoe.payment.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public boolean insertPayment(Payment payment) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int result = 0 ;
		result = sqlSession.insert(NAMESPACE+"insertPayment", payment);
		sqlSession.commit();
		sqlSession.close();
		if(result != 0 ) return true; else return false;
	}

	@Override
	public List<Payment> selectPaymentInfo(int orderNum) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Payment> list = null;
		list = sqlSession.selectList(NAMESPACE+"selectPaymentInfo", orderNum);
		sqlSession.commit();
		sqlSession.close();
		return list;
	}
}










