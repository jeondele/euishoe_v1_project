package com.euishoe.reviews.dto;

import com.euishoe.products.dto.ProductInfo;

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
	private int productNum;			// 상품코드
	private String reviewTitle; 	// 리뷰제목
	private String reviewContent; 	// 리뷰내용
	private String reviewPassword;  // 리뷰비밀번호
	private int reviewScore; 		// 리뷰평점
	private String reviewIsDeleted; // 리뷰삭제여부
	private String reviewIsAnswered; // 리뷰삭제여부
	private String reviewRegdate; 		// 문의등록일
	
	ProductInfo productInfo;
	
	
	// 생성자(Constructor) 선언
	public Review() {
		super();
	}


	public Review(int reviewNum, String customerId, int productNum, String reviewTitle, String reviewContent,
			String reviewPassword, int reviewScore, String reviewIsDeleted, String reviewIsAnswered, String reviewRegdate) {
		super();
		this.reviewNum = reviewNum;
		this.customerId = customerId;
		this.productNum = productNum;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewPassword = reviewPassword;
		this.reviewScore = reviewScore;
		this.reviewIsDeleted = reviewIsDeleted;
		this.reviewIsAnswered = reviewIsAnswered;
		this.reviewRegdate = reviewRegdate;
	}

	public Review(String customerId, int productNum, String reviewTitle, String reviewContent,
			String reviewPassword, int reviewScore) {
		super();
		this.customerId = customerId;
		this.productNum = productNum;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewPassword = reviewPassword;
		this.reviewScore = reviewScore;
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



	public int getProductNum() {
		return productNum;
	}


	public void setProductNum(int productNum) {
		this.productNum = productNum;
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

	
	public String getReviewPassword() {
		return reviewPassword;
	}


	public void setReviewPassword(String reviewPassword) {
		this.reviewPassword = reviewPassword;
	}


	public String getReviewIsAnswered() {
		return reviewIsAnswered;
	}


	public void setReviewIsAnswered(String reviewIsAnswered) {
		this.reviewIsAnswered = reviewIsAnswered;
	}

	
	public String getReviewRegdate() {
		return reviewRegdate;
	}


	public void setReviewRegdate(String reviewRegdate) {
		this.reviewRegdate = reviewRegdate;
	}


	public ProductInfo getProductInfo() {
		return productInfo;
	}


	public void setProductInfo(ProductInfo productInfo) {
		this.productInfo = productInfo;
	}
	

	// toString() 선언
	@Override
	public String toString() {
		return "Review [reviewNum=" + reviewNum + ", customerId=" + customerId + ", productNum=" + productNum
				+ ", reviewTitle=" + reviewTitle + ", reviewContent=" + reviewContent + ", reviewPassword="
				+ reviewPassword + ", reviewScore=" + reviewScore + ", reviewIsDeleted=" + reviewIsDeleted
				+ ", reviewIsAnswered=" + reviewIsAnswered + ", reviewRegdate=" + reviewRegdate + "]";
	}



}
