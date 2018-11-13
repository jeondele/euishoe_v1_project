package com.euishoe.qnas.service;
/**
 * 쇼핑몰 문의와 관련된  서비스 인터페이스를 기반으로 구현
 * @author 전상일
 *
 */

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.euishoe.common.web.Params;
import com.euishoe.qnas.dao.QnaDao;
import com.euishoe.qnas.dto.Qna;

public class QnaServiceImpl implements QnaService {
	private QnaDao qnaDao;

	public QnaDao getQnaDao() {
		return qnaDao;
	}

	public void setQnaDao(QnaDao qnaDao) {
		this.qnaDao = qnaDao;
	}
	
	@Override
	public void createQna(int typeNum, String customerId, int productNum, String qnaContent, int qnaRank) throws Exception {
		qnaDao.createQna(typeNum, customerId, productNum, qnaContent, qnaRank);
	}


	@Override
	public void createQna(Qna qna) throws Exception {
		qnaDao.createQna(qna);
	}

	@Override
	public List<HashMap<String,Object>> qnaDynamicListAll(int productNum, String qnaisLock, String customerId, int TypeNum,
			Params params) throws Exception {
		return qnaDao.qnaDynamicListAll(productNum, qnaisLock, customerId, TypeNum, params);
	}


	@Override
	public List<Map<String, Object>> qnaListByCustomerId(int productNum, String customerId, Params params)
			throws Exception {
		return qnaDao.qnaListByCustomerId(productNum, customerId, params);
	}

	@Override
	public List<Map<String, Object>> qnaListByLock(int productNum, Params params) throws Exception {
		return qnaDao.qnaListByLock(productNum, params);
	}

	@Override
	public List<Map<String, Object>> qnaListByType(int productNum, int typeNum, Params params) throws Exception {
		return qnaDao.qnaListByType(productNum, typeNum, params);
	}

	@Override
	public void deleteQna(int qnaNum) throws Exception {
		qnaDao.deleteQna(qnaNum);
	}

	@Override
	public int countBySearch(int productNum) throws Exception {
		return qnaDao.countBySearch(productNum);
	}

}
