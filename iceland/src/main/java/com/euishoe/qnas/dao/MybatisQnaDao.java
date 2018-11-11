package com.euishoe.qnas.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.euishoe.qnas.dto.Qna;

import kr.or.kosta.blog.common.web.Params;

public class MybatisQnaDao implements QnaDao {
	
	private static final String NAMESPACE = "com.euishoe.Qna.";
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public void createQna(int typeNum, String customerId, int productNum, String qnaContent, int qnaRank) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("qnaTypeNum", typeNum);
		params.put("customerId", customerId);
		params.put("productNum", productNum);
		params.put("qnaContent", qnaContent);
		params.put("qnaRank", qnaRank);
		sqlSession.insert(NAMESPACE+"createQna1", params);
		sqlSession.commit();
		sqlSession.close();
	}

	@Override
	public void createQna(Qna qna) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.insert(NAMESPACE+"createQna2", qna);
		sqlSession.commit();
		sqlSession.close();
	}

	@Override
	public List<Qna> qnaListAll(int productNum) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Qna> list = sqlSession.selectList(NAMESPACE+"selectQnaListAll", productNum);
		return list;
	}

	@Override
	public List<Qna> qnaListByCustomerId(int productNum, String customerId) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("productNum", productNum);
		params.put("customerId", customerId);
		List<Qna> list = sqlSession.selectList(NAMESPACE + "selectQnaUserById", params);
		sqlSession.close();
		return list;
	}

	@Override
	public List<Qna> qnaListByLock(int productNum) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Qna> list = sqlSession.selectList(NAMESPACE + "selectQnaByLock", productNum);
		sqlSession.close();
		return list;
	}

	@Override
	public void deleteQna(int qnaNum) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.delete(NAMESPACE + "deleteQna", qnaNum);
		sqlSession.commit();
		sqlSession.close();
	}

	@Override
	public int countBySearch(int productNum, Params params) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.selectOne(NAMESPACE + "deleteQna", productNum);
		return 0;
	}
	
	@Override
	public List<Qna> searchQna(Params params) throws Exception {
		return null;
	}


}










