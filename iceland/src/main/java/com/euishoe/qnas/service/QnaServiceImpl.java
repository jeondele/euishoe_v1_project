package com.euishoe.qnas.service;
/**
 * 쇼핑몰 문의와 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */

import com.euishoe.qnas.dao.QnaDao;

public class QnaServiceImpl implements QnaService {
	private QnaDao qnaDao;

	public QnaDao getQnaDao() {
		return qnaDao;
	}

	public void setQnaDao(QnaDao qnaDao) {
		this.qnaDao = qnaDao;
	}
}
