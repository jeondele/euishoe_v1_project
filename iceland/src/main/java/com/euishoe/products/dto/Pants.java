package com.euishoe.products.dto;

/**
 * 쇼핑몰 상품 하의에 대한 dto
 * 
 * @author 전상일
 *
 */
public class Pants {
	
	private String pantsCode; //하의코드명
	private String colorCode; //색상코드
	private String sizeCode; //사이즈코드
	private int pantsCount; //하의코드별 수량
	
	public Pants() {
	}

	public Pants(String pantsCode, String colorCode, String sizeCode, int pantsCount) {
		super();
		this.pantsCode = pantsCode;
		this.colorCode = colorCode;
		this.sizeCode = sizeCode;
		this.pantsCount = pantsCount;
	}

	public String getPantsCode() {
		return pantsCode;
	}

	public void setPantsCode(String pantsCode) {
		this.pantsCode = pantsCode;
	}

	public String getColorCode() {
		return colorCode;
	}

	public void setColorCode(String colorCode) {
		this.colorCode = colorCode;
	}

	public String getSizeCode() {
		return sizeCode;
	}

	public void setSizeCode(String sizeCode) {
		this.sizeCode = sizeCode;
	}

	public int getPantsCount() {
		return pantsCount;
	}

	public void setPantsCount(int pantsCount) {
		this.pantsCount = pantsCount;
	}

	@Override
	public String toString() {
		return "Pants [pantsCode=" + pantsCode + ", colorCode=" + colorCode + ", sizeCode=" + sizeCode + ", pantsCount="
				+ pantsCount + "]";
	}

}
