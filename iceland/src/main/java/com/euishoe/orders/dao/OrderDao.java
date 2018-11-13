package com.euishoe.orders.dao;

import java.util.List;
import java.util.Map;

import com.euishoe.orders.dto.Order;
import com.euishoe.orders.dto.OrderByProduct;

/**
 * 쇼핑몰 주문과 관련된 Dao 인터페이스
 * 
 * @author 전상일
 *
 */
public interface OrderDao {
	public List<Map<String,Object>> selectOrderInfo(int orderNum);
	
	// 주문시 orderbyproduct객체 생성
	public void create(String productCode) throws Exception;

	// 주문 객체 생성
	public boolean insertOrder(Order order);
	
	// 주문당 상품 주문번호 생성
	public boolean insertOrderByProduct(OrderByProduct orderByProduct);
}
