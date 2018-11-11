package com.euishoe.comments.service;

import com.euishoe.comments.dao.CommentDao;
import com.euishoe.comments.dto.Comment;

/**
 * 쇼핑몰 댓글과 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */
public class CommentServiceImpl implements CommentService {
	
	private CommentDao commentDao;
	

	public CommentDao getCommentDao() {
		return commentDao;
	}

	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}

	@Override
	public void createReviewComment(int reviewNum, String CommentContent) throws Exception {
		commentDao.createReviewComment(reviewNum, CommentContent);
	}

	@Override
	public void createQnaComment(int qnaNum, String CommentContent) throws Exception {
		commentDao.createQnaComment(qnaNum, CommentContent);
	}

	@Override
	public Comment readQnaComment(int qnaNum) throws Exception {
		return commentDao.readQnaComment(qnaNum);
	}

	@Override
	public Comment readReviewComment(int reviewNum) throws Exception {
		return commentDao.readReviewComment(reviewNum);
	}
}
