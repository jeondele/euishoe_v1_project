package com.euishoe.deliveries.dto;

/**
 * 쇼핑몰 배달 dto
 * 
 * @author 백욱기
 *
 */
public class Delivery {
	
	// 변수선언
	private int deliveryNum; 					// 배송번호 
	private String deliveryAddress;				// 배송주소
	private String deliveryRecipient;			// 배송수령인	
	private String deliveryRecipientPhonenumber;// 배송수령인전화번호
	private String deliveryRequirement;			// 배송요청사항
	private String orderDate;					// 배송주문일자
	private String deliveryDate;				// 배송도착일자
	private String deliveryStatus;				// 배송사품상태
	
	
	// 생성자(Constructor) 선언
	public Delivery() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Delivery(String deliveryAddress, String deliveryRecipient,
			String deliveryRecipientPhonenumber, String deliveryRequirement, String orderDate, String deliveryDate,
			String deliveryStatus) {
		this(0, deliveryAddress, deliveryRecipient, deliveryRecipientPhonenumber, deliveryRequirement, orderDate, deliveryDate, deliveryStatus);
		// TODO Auto-generated constructor stub
	}

	public Delivery(int deliveryNum, String deliveryAddress, String deliveryRecipient,
			String deliveryRecipientPhonenumber, String deliveryRequirement, String orderDate, String deliveryDate,
			String deliveryStatus) {
		super();
		this.deliveryNum = deliveryNum;
		this.deliveryAddress = deliveryAddress;
		this.deliveryRecipient = deliveryRecipient;
		this.deliveryRecipientPhonenumber = deliveryRecipientPhonenumber;
		this.deliveryRequirement = deliveryRequirement;
		this.orderDate = orderDate;
		this.deliveryDate = deliveryDate;
		this.deliveryStatus = deliveryStatus;
	}


	// setter, getter 선언
	public int getDeliveryNum() {
		return deliveryNum;
	}


	public void setDeliveryNum(int deliveryNum) {
		this.deliveryNum = deliveryNum;
	}


	public String getDeliveryAddress() {
		return deliveryAddress;
	}


	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}


	public String getDeliveryRecipient() {
		return deliveryRecipient;
	}


	public void setDeliveryRecipient(String deliveryRecipient) {
		this.deliveryRecipient = deliveryRecipient;
	}


	public String getDeliveryRecipientPhonenumber() {
		return deliveryRecipientPhonenumber;
	}


	public void setDeliveryRecipientPhonenumber(String deliveryRecipientPhonenumber) {
		this.deliveryRecipientPhonenumber = deliveryRecipientPhonenumber;
	}


	public String getDeliveryRequirement() {
		return deliveryRequirement;
	}


	public void setDeliveryRequirement(String deliveryRequirement) {
		this.deliveryRequirement = deliveryRequirement;
	}


	public String getOrderDate() {
		return orderDate;
	}


	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}


	public String getDeliveryDate() {
		return deliveryDate;
	}


	public void setDeliveryDate(String deliveryDate) {
		this.deliveryDate = deliveryDate;
	}


	public String getDeliveryStatus() {
		return deliveryStatus;
	}


	public void setDeliveryStatus(String deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}


	// toString() 선언
	@Override
	public String toString() {
		return "Delivery [deliveryNum=" + deliveryNum + ", deliveryAddress=" + deliveryAddress + ", deliveryRecipient="
				+ deliveryRecipient + ", deliveryRecipientPhonenumber=" + deliveryRecipientPhonenumber
				+ ", deliveryRequirement=" + deliveryRequirement + ", orderDate=" + orderDate + ", deliveryDate="
				+ deliveryDate + ", deliveryStatus=" + deliveryStatus + "]";
	}

}
