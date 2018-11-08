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
	private int productNum;
	private int reviewNum;
	private int qnaNum;
	private String imageRef;
	
	// 생성자(Constructor) 선언
	public Image() {
		super();
	}
	
	
	public Image(int imageNum, int productNum, int reviewNum, int qnaNum, String imageRef) {
		super();
		this.imageNum = imageNum;
		this.productNum = productNum;
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


	public int getProductNum() {
		return productNum;
	}


	public void setProductNum(int productNum) {
		this.productNum = productNum;
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
		return "Image [imageNum=" + imageNum + ", productNum=" + productNum + ", reviewNum=" + reviewNum + ", qnaNum="
				+ qnaNum + ", imageRef=" + imageRef + "]";
	}	
}
