package com.euishoe.reviews.dto;

/**
 * 쇼핑몰 상품 상세페이지의 리뷰 dto
 * 
 * @author 백욱기
 *
 */
public class Review {
	
	// 변수 선언
	private int reviewNum; 			// 리뷰번호
	private String customerId; 		// 회원아이디
	private String productCode;		// 상품코드
	private String reviewTitle; 	// 리뷰제목
	private String reviewContent; 	// 리뷰내용
	private int reviewScore; 		// 리뷰평점
	private String reviewIsDeleted; // 리뷰삭제여부
	
	
	// 생성자(Constructor) 선언
	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Review(int reviewNum, String customerId, String productCode, String reviewTitle, String reviewContent,
			int reviewScore, String reviewIsDeleted) {
		super();
		this.reviewNum = reviewNum;
		this.customerId = customerId;
		this.productCode = productCode;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewScore = reviewScore;
		this.reviewIsDeleted = reviewIsDeleted;
	}


	// setter, getter 선언
	public int getReviewNum() {
		return reviewNum;
	}


	public void setReviewNum(int reviewNum) {
		this.reviewNum = reviewNum;
	}



	public String getCustomerId() {
		return customerId;
	}


	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}



	public String getProductCode() {
		return productCode;
	}


	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}


	public String getReviewTitle() {
		return reviewTitle;
	}


	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}


	public String getReviewContent() {
		return reviewContent;
	}


	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}


	public int getReviewScore() {
		return reviewScore;
	}


	public void setReviewScore(int reviewScore) {
		this.reviewScore = reviewScore;
	}


	public String getReviewIsDeleted() {
		return reviewIsDeleted;
	}


	public void setReviewIsDeleted(String reviewIsDeleted) {
		this.reviewIsDeleted = reviewIsDeleted;
	}


	// toString() 선언
	@Override
	public String toString() {
		return "Review [reviewNum=" + reviewNum + ", customerId=" + customerId + ", productCode=" + productCode
				+ ", reviewTitle=" + reviewTitle + ", reviewContent=" + reviewContent + ", reviewScore=" + reviewScore
				+ ", reviewIsDeleted=" + reviewIsDeleted + "]";
	}
}
