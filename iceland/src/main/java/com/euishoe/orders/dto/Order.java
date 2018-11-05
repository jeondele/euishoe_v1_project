package com.euishoe.orders.dto;

/**
 * 쇼핑몰 주문 dto
 * 
 * @author 전상일
 *
 */
public class Order {
	//주문번호
	private int orderNo;
	//회원아이디
	private String customerId;
	//비회원아이디
	private int nonCustomerId;
	//배송번호
	private int deliveryNo;
	//결제번호
	private int paymentNo;
	
	public Order() {
		super();
	}

	public Order(int orderNo, String customerId, int nonCustomerId, int deliveryNo, int paymentNo) {
		super();
		this.orderNo = orderNo;
		this.customerId = customerId;
		this.nonCustomerId = nonCustomerId;
		this.deliveryNo = deliveryNo;
		this.paymentNo = paymentNo;
	}

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

	public int getNonCustomerId() {
		return nonCustomerId;
	}

	public void setNonCustomerId(int nonCustomerId) {
		this.nonCustomerId = nonCustomerId;
	}

	public int getDeliveryNo() {
		return deliveryNo;
	}

	public void setDeliveryNo(int deliveryNo) {
		this.deliveryNo = deliveryNo;
	}

	public int getPaymentNo() {
		return paymentNo;
	}

	public void setPaymentNo(int paymentNo) {
		this.paymentNo = paymentNo;
	}

	@Override
	public String toString() {
		return "Order [orderNo=" + orderNo + ", customerId=" + customerId + ", nonCustomerId=" + nonCustomerId
				+ ", deliveryNo=" + deliveryNo + ", paymentNo=" + paymentNo + "]";
	}
}
