package com.euishoe.noncustomers.dao;

import com.euishoe.deliveries.dto.Delivery;

/**
 * 쇼핑몰 게시판과 관련된 Dao 인터페이스
 * 
 * @author 전상일
 *
 */
public interface NoncustomerDao {
	//비회원 구매 정보를 저장하기 위한 작업
	public boolean insertDelivery(Delivery delivery);
	
}
