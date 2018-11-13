package com.euishoe.qnas.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.euishoe.common.web.Params;
import com.euishoe.qnas.dto.Qna;

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
		sqlSession.insert(NAMESPACE+"createQna", qna);
		sqlSession.commit();
		sqlSession.close();
	}


	@Override
	public List<HashMap<String,Object>> qnaDynamicListAll(int productNum, String qnaisLock, String customerId, int TypeNum) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("productNum", productNum);
		param.put("qnaIsLock", qnaisLock);
		param.put("customerId", customerId);
		param.put("qnaTypeNum", TypeNum);
		List<HashMap<String,Object>> list = sqlSession.selectList(NAMESPACE+"selectDynamicListAll", param);
		return list;
	}
	

	@Override
	public List<Map<String, Object>> qnaListByCustomerId(int productNum, String customerId) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("productNum", productNum);
		param.put("customerId", customerId);
		List<Map<String,Object>> list = sqlSession.selectList(NAMESPACE+"selectQnaUserById", param);
		return list;
	}

	@Override
	public List<Map<String, Object>> qnaListByLock(int productNum) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("productNum", productNum);
		List<Map<String,Object>> list = sqlSession.selectList(NAMESPACE+"selectQnaByLock", param);
		return list;
	}

	@Override
	public List<Map<String, Object>> qnaListByType(int productNum, int typeNum) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("productNum", productNum);
		param.put("qnaTypeNum", typeNum);
		List<Map<String,Object>> list = sqlSession.selectList(NAMESPACE+"selectQnaByType", param);
		return list;
	}

	@Override
	public void deleteQna(int qnaNum) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.delete(NAMESPACE + "deleteQna", qnaNum);
		sqlSession.commit();
	}

	@Override
	public int countBySearch(int productNum) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int count = sqlSession.selectOne(NAMESPACE + "countBySearch", productNum);
		return count;
	}
}










