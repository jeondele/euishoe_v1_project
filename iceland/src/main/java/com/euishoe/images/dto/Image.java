package com.euishoe.images.dto;

/**
 * 쇼핑몰에 들어가는 이미지 dto
 * 
 * @author 백욱기
 *
 */
public class Image {
	// 변수 선언
	private int imageNum;
	private String productCode;
	private int reviewNum;
	private int qnaNum;
	private String imageRef;
	
	// 생성자(Constructor) 선언
	public Image() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Image(int imageNum, String productCode, int reviewNum, int qnaNum, String imageRef) {
		super();
		this.imageNum = imageNum;
		this.productCode = productCode;
		this.reviewNum = reviewNum;
		this.qnaNum = qnaNum;
		this.imageRef = imageRef;
	}


	// setter, getter 선언
	public int getImageNum() {
		return imageNum;
	}


	public void setImageNum(int imageNum) {
		this.imageNum = imageNum;
	}


	public String getProductCode() {
		return productCode;
	}


	public void setProductCode(String productCode) {
		this.productCode = productCode;
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


	public String getImageRef() {
		return imageRef;
	}


	public void setImageRef(String imageRef) {
		this.imageRef = imageRef;
	}


	// toString() 선언
	@Override
	public String toString() {
		return "Image [imageNum=" + imageNum + ", productCode=" + productCode + ", reviewNum=" + reviewNum + ", qnaNum="
				+ qnaNum + ", imageRef=" + imageRef + "]";
	}	
}
