package com.euishoe.deliveries.service;

import com.euishoe.deliveries.dto.Delivery;

/**
 * 쇼핑몰 배달과 관련된  서비스 인터페이스
 * 
 * @author 전상일
 *
 */
public interface DeliveryService {
	//배송정보 저장
	public boolean insertDelivery(Delivery delivery);
}
