package com.euishoe.products.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

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
	public List<Map<String, Object>> newProductList() throws Exception {
		List<Map<String, Object>> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		list = sqlSession.selectList(NAMESPACE+"newProductList");
		sqlSession.close();
		return list;
	}

	@Override
	public List<Map<String, Object>> hitProductList() throws Exception {
		List<Map<String, Object>> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		list = sqlSession.selectList(NAMESPACE+"hitProductList");
		sqlSession.close();
		return list;
	}
	
	@Override
	public List<Map<String,Object>> selectAll() throws Exception {
		List<Map<String,Object>> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		list = sqlSession.selectList(NAMESPACE+"selectAll");
		sqlSession.close();
		return list;
	}

	@Override
	public List<String> selectImageRefByProductNum(int productNum) throws Exception {
		List<String> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		list = sqlSession.selectList(NAMESPACE+"selectImageRefByProductNum", productNum);
		sqlSession.close();
		return list;
	}

	@Override
	public List<ProductInfo> selectProductInfoByProductNum(int productNum) throws Exception {
		List<ProductInfo> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		list = sqlSession.selectList(NAMESPACE+"selectProductInfoByProductNum", productNum);
		sqlSession.close();
		return list;
	}
	
	
}










