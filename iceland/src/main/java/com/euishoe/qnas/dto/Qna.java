package com.euishoe.qnas.dto;

import com.euishoe.products.dto.ProductInfo;

/**
 * 쇼핑몰 문의 dto
 * 
 * @author 백욱기
 *
 */
public class Qna {
	
	// 변수 선언
	private int qnaNum;				// 문의번호
	private int qnaTypeNum;			// 문의유형번호
	private int productNum;			// 상품번호
	private String customerId; 		// 회원아이디
	private String qnaTitle;		// 문의 제목
	private String qnaContent; 		// 문의내용
	private	String qnaPassword; 	// 문의비밀번호
	private String qnaIsAnswered;	// 문의답변여부
	private String qnaIsLock;		// 문의잠금여부
	private int qnaRank;			// 문의 우선순위
	private String qnaIsDeleted;	// 문의삭제여부
	private String qnaRegdate; 		// 문의등록일
	
	ProductInfo productInfo;
	
	// 생성자 선언
	public Qna() {
		super();
	}

	public Qna(int qnaNum, int qnaTypeNum, String customerId, int productNum,  String qnaTitle, String qnaContent,
			String qnaPassword, String qnaIsAnswered, String qnaIsLock, int qnaRank, String qnaIsDeleted,
			String qnaRegdate) {
		super();
		this.qnaNum = qnaNum;
		this.qnaTypeNum = qnaTypeNum;
		this.customerId = customerId;
		this.productNum = productNum;
		this.qnaTitle = qnaTitle;
		this.qnaContent = qnaContent;
		this.qnaPassword = qnaPassword;
		this.qnaIsAnswered = qnaIsAnswered;
		this.qnaIsLock = qnaIsLock;
		this.qnaRank = qnaRank;
		this.qnaIsDeleted = qnaIsDeleted;
		this.qnaRegdate = qnaRegdate;
	}

	public Qna(int qnaTypeNum, String customerId, int productNum, String qnaContent, int qnaRank) {
		super();
		this.qnaTypeNum = qnaTypeNum;
		this.customerId = customerId;
		this.productNum = productNum;
		this.qnaContent = qnaContent;
		this.qnaRank = qnaRank;
	}



	// setter, getter 선언
	public int getQnaNum() {
		return qnaNum;
	}

	public void setQnaNum(int qnaNum) {
		this.qnaNum = qnaNum;
	}


	public int getQnaTypeNum() {
		return qnaTypeNum;
	}


	public void setQnaTypeNum(int qnaTypeNum) {
		this.qnaTypeNum = qnaTypeNum;
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

	public String getQnaTitle() {
		return qnaTitle;
	}


	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}


	public String getQnaContent() {
		return qnaContent;
	}


	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}


	public String getQnaPassword() {
		return qnaPassword;
	}


	public void setQnaPassword(String qnaPassword) {
		this.qnaPassword = qnaPassword;
	}


	public String getQnaIsAnswered() {
		return qnaIsAnswered;
	}


	public void setQnaIsAnswered(String qnaIsAnswered) {
		this.qnaIsAnswered = qnaIsAnswered;
	}


	public String getQnaIsLock() {
		return qnaIsLock;
	}


	public void setQnaIsLock(String qnaIsLock) {
		this.qnaIsLock = qnaIsLock;
	}


	public int getQnaRank() {
		return qnaRank;
	}


	public void setQnaRank(int qnaRank) {
		this.qnaRank = qnaRank;
	}


	public String getQnaIsDeleted() {
		return qnaIsDeleted;
	}


	public void setQnaIsDeleted(String qnaIsDeleted) {
		this.qnaIsDeleted = qnaIsDeleted;
	}

	
	public String getQnaRegdate() {
		return qnaRegdate;
	}


	public void setQnaRegdate(String qnaRegdate) {
		this.qnaRegdate = qnaRegdate;
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
		return "Qna [qnaNum=" + qnaNum + ", qnaTypeNum=" + qnaTypeNum + ", productNum=" + productNum + ", customerId="
				+ customerId + ", qnaTitle=" + qnaTitle + ", qnaContent=" + qnaContent + ", qnaPassword=" + qnaPassword
				+ ", qnaIsAnswered=" + qnaIsAnswered + ", qnaIsLock=" + qnaIsLock + ", qnaRank=" + qnaRank
				+ ", qnaIsDeleted=" + qnaIsDeleted + ", qnaRegdate=" + qnaRegdate + "]";
	}
}
