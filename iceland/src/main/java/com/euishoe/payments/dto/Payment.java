package com.euishoe.payments.dto;
/**
 * 쇼핑몰 결제 dto
 * 
 * @author 백욱기
 */
public class Payment {
	
	// 변수 선언
	private int paymentNum; 		// 결제번호
	private int paymentPoint;		// 결제사용포인트
	private String paymentMethod; 	// 결제방법
	private String paymentIsRefund;	// 결제환불여부
	private int paymentDiscount; 	// 결제할인금액
	private int paymentOriginCost;  // 결제원가
	private int delivery_charge;	// 배송비
	
	
	// 생성자(Constructor) 선언
	public Payment() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	public Payment(int paymentNum, int paymentPoint, String paymentMethod, String paymentIsRefund, int paymentDiscount,
			int paymentOriginCost, int delivery_charge) {
		super();
		this.paymentNum = paymentNum;
		this.paymentPoint = paymentPoint;
		this.paymentMethod = paymentMethod;
		this.paymentIsRefund = paymentIsRefund;
		this.paymentDiscount = paymentDiscount;
		this.paymentOriginCost = paymentOriginCost;
		this.delivery_charge = delivery_charge;
	}


	// setter, getter
	public int getPaymentNum() {
		return paymentNum;
	}


	public void setPaymentNum(int paymentNum) {
		this.paymentNum = paymentNum;
	}


	public int getPaymentPoint() {
		return paymentPoint;
	}


	public void setPaymentPoint(int paymentPoint) {
		this.paymentPoint = paymentPoint;
	}


	public String getPaymentMethod() {
		return paymentMethod;
	}


	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}


	public String getPaymentIsRefund() {
		return paymentIsRefund;
	}


	public void setPaymentIsRefund(String paymentIsRefund) {
		this.paymentIsRefund = paymentIsRefund;
	}


	public int getPaymentDiscount() {
		return paymentDiscount;
	}


	public void setPaymentDiscount(int paymentDiscount) {
		this.paymentDiscount = paymentDiscount;
	}


	public int getPaymentOriginCost() {
		return paymentOriginCost;
	}


	public void setPaymentOriginCost(int paymentOriginCost) {
		this.paymentOriginCost = paymentOriginCost;
	}


	public int getDelivery_charge() {
		return delivery_charge;
	}


	public void setDelivery_charge(int delivery_charge) {
		this.delivery_charge = delivery_charge;
	}


	// toString()
	@Override
	public String toString() {
		return "Payment [paymentNum=" + paymentNum + ", paymentPoint=" + paymentPoint + ", paymentMethod="
				+ paymentMethod + ", paymentIsRefund=" + paymentIsRefund + ", paymentDiscount=" + paymentDiscount
				+ ", paymentOriginCost=" + paymentOriginCost + ", delivery_charge=" + delivery_charge + "]";
	}
	
}
