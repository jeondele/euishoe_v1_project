package com.euishoe.orders.dto;

/**
 * 쇼핑몰 주문 dto
 * 
 * @author 전상일
 *
 */
public class Order {
	
	private int orderNo; //주문번호
	private String customerId; // 회원아이디
	private String noncustomerNum; // 비회원번호
	private String customerBridgeNum; //회원식별번호
	private int deliveryNum; //배송번호
	private int paymentNum; //결제번호
	
	public Order() {
		super();
	}

	public Order(int orderNo, String customerId, String noncustomerNum, String customerBridgeNum, int deliveryNum,
			int paymentNum) {
		super();
		this.orderNo = orderNo;
		this.customerId = customerId;
		this.noncustomerNum = noncustomerNum;
		this.customerBridgeNum = customerBridgeNum;
		this.deliveryNum = deliveryNum;
		this.paymentNum = paymentNum;
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

	public String getNoncustomerNum() {
		return noncustomerNum;
	}

	public void setNoncustomerNum(String noncustomerNum) {
		this.noncustomerNum = noncustomerNum;
	}

	public String getCustomerBridgeNum() {
		return customerBridgeNum;
	}

	public void setCustomerBridgeNum(String customerBridgeNum) {
		this.customerBridgeNum = customerBridgeNum;
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

	@Override
	public String toString() {
		return "Order [orderNo=" + orderNo + ", customerId=" + customerId + ", noncustomerNum=" + noncustomerNum
				+ ", customerBridgeNum=" + customerBridgeNum + ", deliveryNum=" + deliveryNum + ", paymentNum="
				+ paymentNum + "]";
	}
}
