package com.euishoe.qnas.service;

import java.util.List;

import com.euishoe.qnas.dto.Qna;

/**
 * 쇼핑몰 문의와 관련된 서비스 인터페이스
 * 
 * @author 전상일
 *
 */
public interface QnaService {
	//문의글 작성(map)
	public void createQna(int typeNum, String customerId, int productNum, String qnaTitle, String qnaContent, String qnaPassword, String qnaIsLock) throws Exception;
	
	//문의글 작성(qna 객체)
	public void createQna(Qna qna) throws Exception;
	
	//제품 문의글 전체 조회
	public List<Qna> qnaListAll(int productNum) throws Exception;
	
	//특정 유저 문의글 조회
	public List<Qna> qnaListByCustomerId(int productNum, String customerId) throws Exception;
	
	//비밀글 제외 조회
	public List<Qna> qnaListByLock(int productNum) throws Exception;
	
	//삭제
	public void deleteQna(int qnaNum) throws Exception;
}
