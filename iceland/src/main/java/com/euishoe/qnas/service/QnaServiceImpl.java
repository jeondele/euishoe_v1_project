package com.euishoe.qnas.service;
/**
 * 쇼핑몰 문의와 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */

import java.util.List;

import com.euishoe.qnas.dao.QnaDao;
import com.euishoe.qnas.dto.Qna;

import kr.or.kosta.blog.common.web.Params;

public class QnaServiceImpl implements QnaService {
	private QnaDao qnaDao;

	public QnaDao getQnaDao() {
		return qnaDao;
	}

	public void setQnaDao(QnaDao qnaDao) {
		this.qnaDao = qnaDao;
	}

	@Override
	public void createQna(int typeNum, String customerId, int productNum, String qnaTitle, String qnaContent,
			String qnaPassword, String qnaIsLock) throws Exception {
			qnaDao.createQna(typeNum, customerId, productNum, qnaTitle, qnaContent, qnaPassword, qnaIsLock);
	}

	@Override
	public void createQna(Qna qna) throws Exception {
		qnaDao.createQna(qna);
	}

	@Override
	public List<Qna> qnaListAll(int productNum) throws Exception {
		return qnaDao.qnaListAll(productNum);
	}

	@Override
	public List<Qna> qnaListByCustomerId(int productNum, String customerId) throws Exception {
		return qnaDao.qnaListByCustomerId(productNum, customerId);
	}

	@Override
	public List<Qna> qnaListByLock(int productNum) throws Exception {
		return qnaDao.qnaListByLock(productNum);
	}

	@Override
	public void deleteQna(int qnaNum) throws Exception {
		qnaDao.deleteQna(qnaNum);
	}

	@Override
	public List<Qna> searchQna(Params params) throws Exception {
		return null;
	}

	@Override
	public int countBySearch(Params params) throws Exception {
		return 0;
	}
}
