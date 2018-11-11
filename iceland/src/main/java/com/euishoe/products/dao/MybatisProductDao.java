package com.euishoe.products.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.euishoe.products.dto.Product;
import com.euishoe.products.dto.ProductInfo;

public class MybatisProductDao implements ProductDao {
	
	private static final String NAMESPACE = "com.euishoe.products.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<ProductInfo> newProductList() throws Exception {
		List<ProductInfo> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		list = sqlSession.selectList(NAMESPACE+"newProductList");
		return list;
	}

	@Override
	public List<ProductInfo> hitProductList() throws Exception {
		List<ProductInfo> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		list = sqlSession.selectList(NAMESPACE+"hitProductList");
		return list;
	}
	
	@Override
	public List<ProductInfo> selectAll() throws Exception {
		List<ProductInfo> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		list = sqlSession.selectList(NAMESPACE+"selectAll");
		sqlSession.close();
		return list;
	}

	@Override  // 주문시 product객체 생성
	public String create(Product product) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.insert(NAMESPACE+"create", product);
		sqlSession.commit();
		sqlSession.close();
		return product.getProductCode();
	}
}










