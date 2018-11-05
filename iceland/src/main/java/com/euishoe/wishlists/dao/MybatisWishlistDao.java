package com.euishoe.wishlists.dao;

import org.apache.ibatis.session.SqlSessionFactory;

public class MybatisWishlistDao implements WishlistDao {
	
	private static final String NAMESPACE = "com.euishoe.Wishlist.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
}










