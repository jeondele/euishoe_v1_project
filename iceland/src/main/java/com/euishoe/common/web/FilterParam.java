package com.euishoe.common.web;

/**
 * 여러개의 전달인자들을 포장하기 위한 Wrapper 클래스
 * {사용자 선택페이지, 한페이지에 출력하는 행의 개수, 출력 페이지 개수, 검색유형, 검색값 등}
 *  
 * @author 김기정
 */
public class FilterParam {
	private String tpo;
	private String season;
	private String lowPrice;
	private String highPrice;
	private String fabric;
	private String color;
	private int bodyType;
	private int shoulderType;
	private int armType;
	private int legType;
	private String orderByPrice;
	private String orderByHitcount;
	private String orderByStar;
	
	public FilterParam() {
		this(null, null, null, null, null, null, 2, 2, 2, 2, null, null, null);
	}

	public FilterParam(String tpo, String season, String lowPrice, String highPrice, String fabric, String color,
			int bodyType, int shoulderType, int armType, int legType, String orderByPrice, String orderByHitcount,
			String orderByStar) {
		super();
		this.tpo = tpo;
		this.season = season;
		this.lowPrice = lowPrice;
		this.highPrice = highPrice;
		this.fabric = fabric;
		this.color = color;
		this.bodyType = bodyType;
		this.shoulderType = shoulderType;
		this.armType = armType;
		this.legType = legType;
		this.orderByPrice = orderByPrice;
		this.orderByHitcount = orderByHitcount;
		this.orderByStar = orderByStar;
	}
	
	public String getTpo() {
		return tpo;
	}

	public void setTpo(String tpo) {
		this.tpo = tpo;
	}

	public String getSeason() {
		return season;
	}

	public void setSeason(String season) {
		this.season = season;
	}

	public String getLowPrice() {
		return lowPrice;
	}

	public void setLowPrice(String lowPrice) {
		this.lowPrice = lowPrice;
	}

	public String getHighPrice() {
		return highPrice;
	}

	public void setHighPrice(String highPrice) {
		this.highPrice = highPrice;
	}

	public String getFabric() {
		return fabric;
	}

	public void setFabric(String fabric) {
		this.fabric = fabric;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}
	
	
	public int getBodyType() {
		return bodyType;
	}

	public void setBodyType(int bodyType) {
		this.bodyType = bodyType;
	}

	public int getShoulderType() {
		return shoulderType;
	}

	public void setShoulderType(int shoulderType) {
		this.shoulderType = shoulderType;
	}

	public int getArmType() {
		return armType;
	}

	public void setArmType(int armType) {
		this.armType = armType;
	}

	public int getLegType() {
		return legType;
	}

	public void setLegType(int legType) {
		this.legType = legType;
	}

	public String getOrderByPrice() {
		return orderByPrice;
	}

	public void setOrderByPrice(String orderByPrice) {
		this.orderByPrice = orderByPrice;
	}

	public String getOrderByHitcount() {
		return orderByHitcount;
	}

	public void setOrderByHitcount(String orderByHitcount) {
		this.orderByHitcount = orderByHitcount;
	}

	public String getOrderByStar() {
		return orderByStar;
	}

	public void setOrderByStar(String orderByStar) {
		this.orderByStar = orderByStar;
	}

	@Override
	public String toString() {
		return "FilterParam [tpo=" + tpo + ", season=" + season + ", lowPrice=" + lowPrice + ", highPrice=" + highPrice
				+ ", fabric=" + fabric + ", color=" + color + ", bodyType=" + bodyType + ", shoulderType="
				+ shoulderType + ", armType=" + armType + ", legType=" + legType + ", orderByPrice=" + orderByPrice
				+ ", orderByHitcount=" + orderByHitcount + ", orderByStar=" + orderByStar + "]";
	}

	
}
