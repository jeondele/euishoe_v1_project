package com.euishoe.deliveries.service;
/**
 * 쇼핑몰 배송과 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */

import com.euishoe.deliveries.dao.DeliveryDao;
import com.euishoe.deliveries.dto.Delivery;

public class DeliveryServiceImpl implements DeliveryService {
	public DeliveryDao deliveryDao;

	public DeliveryDao getDeliveryDao() {
		return deliveryDao;
	}

	public void setDeliveryDao(DeliveryDao deliveryDao) {
		this.deliveryDao = deliveryDao;
	}

	@Override
	public boolean insertDelivery(Delivery delivery) {
		return deliveryDao.insertDelivery(delivery);
	}
	
}
