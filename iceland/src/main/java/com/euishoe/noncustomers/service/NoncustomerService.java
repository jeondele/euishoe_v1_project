package com.euishoe.noncustomers.service;

import com.euishoe.deliveries.dto.Delivery;

/**
 * 쇼핑몰 비회원과 관련된 서비스 인터페이스
 * 
 * @author 전상일
 *
 */
public interface NoncustomerService {
	//비회원 구매 정보를 저장하기 위한 작업
	public boolean insertDelivery(Delivery delivery);
}
