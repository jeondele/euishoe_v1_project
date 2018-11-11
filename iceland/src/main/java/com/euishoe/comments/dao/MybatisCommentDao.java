package com.euishoe.comments.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.euishoe.comments.dto.Comment;

public class MybatisCommentDao implements CommentDao {
	
	private static final String NAMESPACE = "com.euishoe.board.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	//board에 대한 기능들

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
	public Comment readQnaComment(int qnaNum) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Comment comment = sqlSession.selectOne(NAMESPACE+"selectReviewComment", qnaNum);
		sqlSession.close();
		return comment;
		
	}

	@Override
	public Comment readReviewComment(int reviewNum) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Comment comment = sqlSession.selectOne(NAMESPACE+"selectReviewComment", reviewNum);
		sqlSession.close();
		return comment;
	}
}










