package com.euishoe.products.dto;

public class ProductInfo {
	
	// 변수 선언
	private int productNum; 				// 상품번호
	private int productListNum; 			// 상품글번호
	private String productName; 			// 상품이름
	private int productCost; 				// 상품원가
	private int productPrice; 				// 상품정가
	private String productBriefInfomation; 	// 상품요약정보
	private String productManufacturer; 	// 상품제조사
	private String productReleaseDate; 		// 상품출시일자
	private String productOrigin; 			// 상품생산지
	private int productListPrice; 			// 상품글에 적힌 가격
	private String colorCode;				// 색상코드
	private int productHitcount;			// 상품조회수
	private int productBody; 				// 상품몸성향
	private int productShoulder;			// 상품어깨성향
	private int productArm; 				// 상품팔성향
	private int productLeg;					// 상품다리성향
	private String productSeason;			// 상품계절
	private String productFabric;			// 상품원단
	private String productTpo;				// 상품TPO
	
	
	// 생성자(Constructor) 선언
	public ProductInfo() {

	}

	public ProductInfo(int productNum, int productListNum, String productName, int productCost, int productPrice,
			String productBriefInfomation, String productManufacturer, String productReleaseDate, String productOrigin,
			int productListPrice, String colorCode, int productHitcount, int productBody, int productShoulder,
			int productArm, int productLeg, String productSeason, String productFabric, String productTpo) {
		super();
		this.productNum = productNum;
		this.productListNum = productListNum;
		this.productName = productName;
		this.productCost = productCost;
		this.productPrice = productPrice;
		this.productBriefInfomation = productBriefInfomation;
		this.productManufacturer = productManufacturer;
		this.productReleaseDate = productReleaseDate;
		this.productOrigin = productOrigin;
		this.productListPrice = productListPrice;
		this.colorCode = colorCode;
		this.productHitcount = productHitcount;
		this.productBody = productBody;
		this.productShoulder = productShoulder;
		this.productArm = productArm;
		this.productLeg = productLeg;
		this.productSeason = productSeason;
		this.productFabric = productFabric;
		this.productTpo = productTpo;
	}

	// setter, getter 선언
	public int getProductNum() {
		return productNum;
	}

	public void setProductNum(int productNum) {
		this.productNum = productNum;
	}

	public int getProductListNum() {
		return productListNum;
	}

	public void setProductListNum(int productListNum) {
		this.productListNum = productListNum;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getProductCost() {
		return productCost;
	}

	public void setProductCost(int productCost) {
		this.productCost = productCost;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductBriefInfomation() {
		return productBriefInfomation;
	}

	public void setProductBriefInfomation(String productBriefInfomation) {
		this.productBriefInfomation = productBriefInfomation;
	}

	public String getProductManufacturer() {
		return productManufacturer;
	}

	public void setProductManufacturer(String productManufacturer) {
		this.productManufacturer = productManufacturer;
	}

	public String getProductReleaseDate() {
		return productReleaseDate;
	}

	public void setProductReleaseDate(String productReleaseDate) {
		this.productReleaseDate = productReleaseDate;
	}

	public String getProductOrigin() {
		return productOrigin;
	}

	public void setProductOrigin(String productOrigin) {
		this.productOrigin = productOrigin;
	}

	public int getProductListPrice() {
		return productListPrice;
	}

	public void setProductListPrice(int productListPrice) {
		this.productListPrice = productListPrice;
	}

	public String getColorCode() {
		return colorCode;
	}


	public void setColorCode(String colorCode) {
		this.colorCode = colorCode;
	}

	public int getProductHitcount() {
		return productHitcount;
	}

	public void setProductHitcount(int productHitcount) {
		this.productHitcount = productHitcount;
	}

	public int getProductBody() {
		return productBody;
	}

	public void setProductBody(int productBody) {
		this.productBody = productBody;
	}

	public int getProductShoulder() {
		return productShoulder;
	}

	public void setProductShoulder(int productShoulder) {
		this.productShoulder = productShoulder;
	}

	public int getProductArm() {
		return productArm;
	}

	public void setProductArm(int productArm) {
		this.productArm = productArm;
	}

	public int getProductLeg() {
		return productLeg;
	}

	public void setProductLeg(int productLeg) {
		this.productLeg = productLeg;
	}
	
	public String getProductSeason() {
		return productSeason;
	}
	
	public void setProductSeason(String productSeason) {
		this.productSeason = productSeason;
	}
	
	public String getProductFabric() {
		return productFabric;
	}
	
	public void setProductFabric(String productFabric) {
		this.productFabric = productFabric;
	}
	
	public String getProductTpo() {
		return productTpo;
	}
	
	public void setProductTpo(String productTpo) {
		this.productTpo = productTpo;
	}

	@Override
	public String toString() {
		return "ProductInfo [productNum=" + productNum + ", productListNum=" + productListNum + ", productName="
				+ productName + ", productCost=" + productCost + ", productPrice=" + productPrice
				+ ", productBriefInfomation=" + productBriefInfomation + ", productManufacturer=" + productManufacturer
				+ ", productReleaseDate=" + productReleaseDate + ", productOrigin=" + productOrigin
				+ ", productListPrice=" + productListPrice + ", colorCode=" + colorCode + ", productHitcount="
				+ productHitcount + ", productBody=" + productBody + ", productShoulder=" + productShoulder
				+ ", productArm=" + productArm + ", productLeg=" + productLeg + ", productSeason=" + productSeason
				+ ", productFabric=" + productFabric + ", productTpo=" + productTpo + "]";
	}
	
}
