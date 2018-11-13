package com.euishoe.products.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.euishoe.common.web.FilterParam;
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
	public List<Map<String,Object>> selectAll2() throws Exception {
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

	@Override  // 주문시 product객체 생성
	public String create(Product product) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.insert(NAMESPACE+"create", product);
		sqlSession.commit();
		sqlSession.close();
		return product.getProductCode();
	}

	@Override
	public List<Map<String, Object>> selectAllById(int productNum) throws Exception {
		List<Map<String, Object>> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		list = sqlSession.selectList(NAMESPACE+"selectAllById", productNum);
		sqlSession.commit();
		sqlSession.close();
		return list;
	}

	@Override
	public List<Map<String, Object>> selectAll() throws Exception {
		List<Map<String,Object>> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		list = sqlSession.selectList(NAMESPACE+"selectAll");
		sqlSession.close();
		return list;
	}

	@Override
	public List<Map<String, Object>> filter(FilterParam filterParam) throws Exception {
		List<Map<String,Object>> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		list = sqlSession.selectList(NAMESPACE+"filter", filterParam);
		sqlSession.close();
		return list;
	}

	@Override
	public void createOne(Map map) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.insert(NAMESPACE+"createOne", map);
		sqlSession.commit();
		sqlSession.close();
	}

	@Override
	public void update(Map map) throws Exception {
        SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.update(NAMESPACE+"update",map);
		sqlSession.commit();
		sqlSession.close();
		
	}

	@Override
	public boolean updatePants(Map<String, Object> map) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int result = sqlSession.update(NAMESPACE+"updatePants",map);
		sqlSession.commit();
		sqlSession.close();
		if(result == 0 ) return false;
		else return true;
	}

	@Override
	public boolean updateJackets(Map<String, Object> map) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int result = sqlSession.update(NAMESPACE+"updateJackets",map);
		sqlSession.commit();
		sqlSession.close();
		if(result == 0 ) return false;
		else return true;
	}

}










