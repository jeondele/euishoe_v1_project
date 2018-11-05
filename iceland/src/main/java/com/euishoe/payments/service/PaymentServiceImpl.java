package com.euishoe.payments.service;
import com.euishoe.payments.dao.PaymentDao;

/**
 * 쇼핑몰 결제와 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */
public class PaymentServiceImpl implements PaymentService {
	private PaymentDao paymentDao;

	public PaymentDao getPaymentDao() {
		return paymentDao;
	}

	public void setPaymentDao(PaymentDao paymentDao) {
		this.paymentDao = paymentDao;
	}
	
}
