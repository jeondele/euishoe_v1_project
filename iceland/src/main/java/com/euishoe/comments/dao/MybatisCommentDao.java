package com.euishoe.comments.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.euishoe.comments.dto.Comment;

public class MybatisCommentDao implements CommentDao {
	
	private static final String NAMESPACE = "com.euishoe.Comment.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public void createReviewComment(int reviewNum, String commentContent) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("reviewNum", reviewNum);
		params.put("commentContent", commentContent);
		sqlSession.insert(NAMESPACE+"writeReviewComment", params);
		sqlSession.commit();
		sqlSession.close();
	}

	@Override
	public void createQnaComment(int qnaNum, String commentContent) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("qnaNum", qnaNum);
		params.put("commentContent", commentContent);
		sqlSession.insert(NAMESPACE+"writeReviewComment", params);
		sqlSession.commit();
		sqlSession.close();
	}

	@Override
	public List<HashMap<String, Object>> readComment(int productNum) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<HashMap<String, Object>> list = sqlSession.selectList(NAMESPACE+"selectComment", productNum);
		return list;
	}


}










