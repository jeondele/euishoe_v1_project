package com.euishoe.payments.dto;
/**
 * 쇼핑몰 결제 dto
 * 
 * @author 전상일
 */
public class Payment {
	//결제번호
	private int paymentNo;
	//결제할 때 사용한 포인트
	private int paymentPoint;
	//결제 방법
	private String paymentMethod;
	//환불 여부
	private int paymentRefund;
	//결제할인금액
}
