package com.euishoe.orders.dto;

/**
 * 쇼핑몰 주문 dto
 * 
 * @author 전상일
 *
 */
public class Order {
	
	// 변수 선언
	private int orderNo; 				//주문번호
	private String customerId; 			// 회원아이디
	private String noncustomerNum; 		// 비회원번호
	private int deliveryNum; 			//배송번호
	private int paymentNum; 			//결제번호
	
	
	// 생성자(Contructor 선언)
	public Order() {
		super();
	}

	public Order(int orderNo, String customerId, String noncustomerNum, int deliveryNum, int paymentNum) {
		super();
		this.orderNo = orderNo;
		this.customerId = customerId;
		this.noncustomerNum = noncustomerNum;
		this.deliveryNum = deliveryNum;
		this.paymentNum = paymentNum;
	}

	
	// setter, getter 선언
	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public String getNoncustomerNum() {
		return noncustomerNum;
	}

	public void setNoncustomerNum(String noncustomerNum) {
		this.noncustomerNum = noncustomerNum;
	}

	public int getDeliveryNum() {
		return deliveryNum;
	}

	public void setDeliveryNum(int deliveryNum) {
		this.deliveryNum = deliveryNum;
	}

	public int getPaymentNum() {
		return paymentNum;
	}

	public void setPaymentNum(int paymentNum) {
		this.paymentNum = paymentNum;
	}


	// toString() 선언
	@Override
	public String toString() {
		return "Order [orderNo=" + orderNo + ", customerId=" + customerId + ", noncustomerNum=" + noncustomerNum
				+ ", deliveryNum=" + deliveryNum + ", paymentNum=" + paymentNum + "]";
	}
}
