package com.euishoe.comments.service;

import com.euishoe.comments.dto.Comment;

/**
 * 쇼핑몰 게시판(문의, 리뷰, 공지)과 관련된 서비스 인터페이스
 * 
 * @author 전상일
 *
 */
public interface CommentService {
	
	//(관리자)리뷰 댓글 작성
	public void createReviewComment(int reviewNum, String CommentContent) throws Exception;
	
	//(관리자)문의글 댓글 작성
	public void createQnaComment(int qnaNum, String CommentContent) throws Exception;
	
	//문의글 댓글 읽기
	public Comment readQnaComment(int qnaNum) throws Exception;
	
	//리뷰글 댓글 읽기
	public Comment readReviewComment(int reviewNum) throws Exception;
}
