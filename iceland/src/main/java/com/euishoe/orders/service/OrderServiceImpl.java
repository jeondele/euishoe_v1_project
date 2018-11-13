package com.euishoe.orders.service;
/**
 * 쇼핑몰 주문과 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */

import java.util.List;
import java.util.Map;

import com.euishoe.customers.dao.CustomerDao;
import com.euishoe.orders.dao.OrderDao;
import com.euishoe.products.dao.ProductDao;
import com.euishoe.products.dto.Product;
import com.euishoe.products.dto.ProductInfo;

public class OrderServiceImpl implements OrderService {
	private OrderDao orderDao;
	private ProductDao productDao;
	private CustomerDao customerDao;
	
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

	public CustomerDao getCustomerDao() {
		return customerDao;
	}

	public void setCustomerDao(CustomerDao customerDao) {
		this.customerDao = customerDao;
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

	@Override
	public List<ProductInfo> getProductInfo(int productNum) throws Exception {
		return productDao.selectProductInfoByProductNum(productNum);
	}

	@Override
	public String[] productCodeParsing(String productCode) throws Exception {
		String[] codeSplited = productCode.split("$");
		String pantsCode = codeSplited[0]+"$"+codeSplited[2]+"$"+codeSplited[3];
		String jacketCode = codeSplited[0]+"$"+codeSplited[1]+"$"+codeSplited[3];
		String pantsSize = codeSplited[2];
		String jacketSize = codeSplited[1];
		String[] codes = new String[5];
		codes[0] = productCode;
		codes[1] = jacketCode;
		codes[2] = pantsCode;
		codes[3] = jacketSize;
		codes[4] = pantsSize;
		return codes;
	}

	@Override
	public Map<String, Object> customerOrderInfo(String customerId) throws Exception {
		return customerDao.customerOrderInfo(customerId);
	}
	
	
	
}
