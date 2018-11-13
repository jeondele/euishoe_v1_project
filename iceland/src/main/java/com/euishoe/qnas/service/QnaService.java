package com.euishoe.qnas.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.euishoe.common.web.Params;
import com.euishoe.qnas.dto.Qna;

/**
 * 쇼핑몰 문의와 관련된 서비스 인터페이스
 * 
 * @author 전상일
 *
 */
public interface QnaService {
	
		//문의글 작성(map)
		public void createQna(int typeNum, String customerId, int productNum, String qnaContent, int qnaRank) throws Exception;
		
		//문의글 작성(qna 객체)
		public void createQna(Qna qna) throws Exception;
		
		//제품 문의글 전체 조회
		public List<HashMap<String,Object>> qnaDynamicListAll(int productNum, String qnaisLock, String customerId, int TypeNum) throws Exception;
		
		//특정 유저 문의글 조회(페이징)
		public List<Map<String,Object>> qnaListByCustomerId(int productNum, String customerId) throws Exception;
		
		//비밀글 제외 조회(페이징)
		public List<Map<String,Object>> qnaListByLock(int productNum) throws Exception;
		
		//타입으로 조회(페이징)
		public List<Map<String,Object>> qnaListByType(int productNum, int typeNum) throws Exception;
		
		//삭제
		public void deleteQna(int qnaNum) throws Exception;
		
		//조회 목록 개수
		public int countBySearch(int productNum) throws Exception;
}
