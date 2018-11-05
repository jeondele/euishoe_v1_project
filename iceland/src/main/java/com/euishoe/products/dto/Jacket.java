package com.euishoe.products.dto;

/**
 * 쇼핑몰 상품 상의에 대한 dto
 * 
 * @author 전상일
 *
 */
public class Jacket {
	
	private String jacketCode; //상의코드명
	private String sizeCode; //사이즈코드
	private int jacketCount; //상의코드별 수량
	
	public Jacket() {
	}
	
	public Jacket(String jacketCode, String sizeCode, int jacketCount) {
		super();
		this.jacketCode = jacketCode;
		this.sizeCode = sizeCode;
		this.jacketCount = jacketCount;
	}

	public String getJacketCode() {
		return jacketCode;
	}

	public void setJacketCode(String jacketCode) {
		this.jacketCode = jacketCode;
	}

	public String getSizeCode() {
		return sizeCode;
	}

	public void setSizeCode(String sizeCode) {
		this.sizeCode = sizeCode;
	}

	public int getJacketCount() {
		return jacketCount;
	}

	public void setJacketCount(int jacketCount) {
		this.jacketCount = jacketCount;
	}

	@Override
	public String toString() {
		return "Jacket [jacketCode=" + jacketCode + ", sizeCode=" + sizeCode + ", jacketCount=" + jacketCount + "]";
	}
}
