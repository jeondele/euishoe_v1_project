package com.euishoe.payments.dao;

import java.util.List;

import com.euishoe.payments.dto.Payment;

/**
 * 쇼핑몰 결제와 관련된 Dao 인터페이스
 * 
 * @author 전상일
 *
 */
public interface PaymentDao {
	//결제정보 저장
	public boolean insertPayment(Payment payment);
		
	//결제정보 조회
	List<Payment> selectPaymentInfo(int orderNum);

}
