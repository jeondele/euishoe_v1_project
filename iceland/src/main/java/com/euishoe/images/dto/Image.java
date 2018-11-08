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
<<<<<<< HEAD
	private String productNum;
=======
	private int productNum;
>>>>>>> feature/customer7(es)
	private int reviewNum;
	private int qnaNum;
	private String imageRef;
	
	// 생성자(Constructor) 선언
	public Image() {
		super();
	}
	
	
<<<<<<< HEAD
	public Image(int imageNum, String productNum, int reviewNum, int qnaNum, String imageRef) {
=======
	public Image(int imageNum, int productNum, int reviewNum, int qnaNum, String imageRef) {
>>>>>>> feature/customer7(es)
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


<<<<<<< HEAD
	public String getProductNum() {
=======
	public int getProductNum() {
>>>>>>> feature/customer7(es)
		return productNum;
	}


<<<<<<< HEAD
	public void setProductNum(String productNum) {
=======
	public void setProductNum(int productNum) {
>>>>>>> feature/customer7(es)
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
