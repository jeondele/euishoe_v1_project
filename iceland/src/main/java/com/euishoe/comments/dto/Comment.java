package com.euishoe.comments.dto;

/**
 * 댓글 dto
 * 
 * @author 전상일
 *
 */
public class Comment {
	//dto
	private int commentNum;	// 댓글번호
	private int reviewNum;	// 리뷰번호
	private int qnaNum;		// 문의번호
	private String commentContent;	// 댓글내용
	private int commentLevel;	// 댓글레벨
	private String commentIsDeleted; // 댓글삭제여부
	
	// 생성자
	public Comment(int commentNum, int reviewNum, int qnaNum, String commentContent, int commentLevel,
			String commentIsDeleted) {
		super();
		this.commentNum = commentNum;
		this.reviewNum = reviewNum;
		this.qnaNum = qnaNum;
		this.commentContent = commentContent;
		this.commentLevel = commentLevel;
		this.commentIsDeleted = commentIsDeleted;
	}

	// setter, getter
	public int getCommentNum() {
		return commentNum;
	}

	public void setCommentNum(int commentNum) {
		this.commentNum = commentNum;
	}

	public int getReviewNum() {
		return reviewNum;
	}

	public void setReviewNum(int reviewNum) {
		this.reviewNum = reviewNum;
	}

	public int getQnaNum() {
		return qnaNum;
	}

	public void setQnaNum(int qnaNum) {
		this.qnaNum = qnaNum;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public int getCommentLevel() {
		return commentLevel;
	}

	public void setCommentLevel(int commentLevel) {
		this.commentLevel = commentLevel;
	}

	public String getCommentIsDeleted() {
		return commentIsDeleted;
	}

	public void setCommentIsDeleted(String commentIsDeleted) {
		this.commentIsDeleted = commentIsDeleted;
	}

	// toString 오버라이딩
	@Override
	public String toString() {
		return "Comment [commentNum=" + commentNum + ", reviewNum=" + reviewNum + ", qnaNum=" + qnaNum
				+ ", commentContent=" + commentContent + ", commentLevel=" + commentLevel + ", commentIsDeleted="
				+ commentIsDeleted + "]";
	}
	
	
	
}
