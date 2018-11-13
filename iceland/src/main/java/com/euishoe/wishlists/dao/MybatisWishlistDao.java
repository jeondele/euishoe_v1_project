package com.euishoe.wishlists.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.euishoe.products.dto.ProductInfo;

public class MybatisWishlistDao implements WishlistDao {
	
	private static final String NAMESPACE = "com.euishoe.wishlist.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	
	//고객의 아이디와 , 상품번호를 받아서 wishlist table에 집어넣는 메소드
	@Override
	public boolean insertWishlist(String customerId, int productNum) throws Exception {
		//위시리스트에 있으면 
		if(canAddToWishlist(customerId, productNum)) return false;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("customerId", customerId);
		params.put("productNum", productNum);
		int result = 0;
		result = sqlSession.insert(NAMESPACE+"insertWishlist", params);
		sqlSession.commit();
		sqlSession.close();
		if(result !=0) return true;
		else return false;
	}
	
	//고객의 아이디와 , 상품번호를 받아서 select 값이 있는지 없는지 확인하는 작업
	@Override
	public boolean canAddToWishlist(String customerId, int productNum) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("customerId", customerId);
		params.put("productNum", productNum);
		int result = 0;
		List<String> list = sqlSession.selectList(NAMESPACE+"certifyWishlist", params);
		sqlSession.commit();
		sqlSession.close();
		if(list != null) return false;
		else return false;
	}

	//고객의 아이디로 , 찜목록 리스트 반환
	@Override
	public List<ProductInfo> selectWishlists(String customerId) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<ProductInfo> list = null;
		list = sqlSession.selectList(NAMESPACE+"selectWishlists", customerId);
		sqlSession.commit();
		sqlSession.close();
		return list;
	}

	//고객의 아이디로 , 찜목록 삭제
	@Override
	public boolean deleteWishlist(String customerId, int productNum) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("customerId", customerId);
		params.put("productNum", productNum);
		int result = 0;
		result = sqlSession.delete(NAMESPACE+"deleteWishlist", params);
		sqlSession.commit();
		sqlSession.close();
		if(result !=0) return true;
		else return false;
	}
	
	@Override
	public List<HashMap<String, Object>> listWishesForLogin(String customer_id){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<HashMap<String,Object>> list = sqlSession.selectList(NAMESPACE + "listWishesForLogin", customer_id);
		sqlSession.close();
		return list;
		
	}

	
	
}










