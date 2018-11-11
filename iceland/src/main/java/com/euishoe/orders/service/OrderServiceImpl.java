package com.euishoe.orders.service;
/**
 * 쇼핑몰 주문과 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */

import com.euishoe.orders.dao.OrderDao;
import com.euishoe.products.dao.ProductDao;
import com.euishoe.products.dto.Product;

public class OrderServiceImpl implements OrderService {
	private OrderDao orderDao;
	private ProductDao productDao;

	public OrderDao getOrderDao() {
		return orderDao;
	}

	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}

	public ProductDao getProductDao() {
		return productDao;
	}
	
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	@Override  // 주문을 위한 product객체 생성
	public void createProduct(Product product) throws Exception {
		String productCode = product.getProductCode();
		productDao.create(product);
		createOBP(productCode);
		
	}

	@Override
	public void createOBP(String productCode) throws Exception {
		orderDao.create(productCode);
	}
	
	
}
