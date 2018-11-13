package com.euishoe.deliveries.dao;

import java.util.List;

import com.euishoe.deliveries.dto.Delivery;

/**
 * 쇼핑몰 배송와 관련된 Dao 인터페이스
 * 
 * @author 전상일
 *
 */
public interface DeliveryDao {
	//배송번호 저장
	public boolean insertDelivery(Delivery delivery);
	
	//배송정보 조회
	public List<Delivery> deliveryInfo(int orderNum);
	
	//인풋할 배송넘버 조회
	public int selectMaxNextValDelivery();
}
