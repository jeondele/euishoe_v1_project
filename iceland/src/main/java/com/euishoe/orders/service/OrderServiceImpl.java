package com.euishoe.orders.service;
/**
 * 쇼핑몰 주문과 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */

import java.util.List;

import com.euishoe.customers.dao.CustomerDao;
import com.euishoe.deliveries.dao.DeliveryDao;
import com.euishoe.deliveries.dto.Delivery;
import com.euishoe.orders.dao.OrderDao;
import com.euishoe.orders.dto.Order;
import com.euishoe.orders.dto.OrderByProduct;
import com.euishoe.payments.dao.PaymentDao;
import com.euishoe.payments.dto.Payment;
import com.euishoe.points.dao.PointDao;
import com.euishoe.points.dto.PointHistory;
import com.euishoe.products.dao.ProductDao;
import com.euishoe.products.dto.Product;
import com.euishoe.products.dto.ProductInfo;

public class OrderServiceImpl implements OrderService {
	private OrderDao orderDao;
	private ProductDao productDao;
	private CustomerDao customerDao;
	private PaymentDao paymentDao;
	private DeliveryDao deliveryDao;
	private PointDao pointDao;
	
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

	public PaymentDao getPaymentDao() {
		return paymentDao;
	}

	public void setPaymentDao(PaymentDao paymentDao) {
		this.paymentDao = paymentDao;
	}

	public DeliveryDao getDeliveryDao() {
		return deliveryDao;
	}

	public void setDeliveryDao(DeliveryDao deliveryDao) {
		this.deliveryDao = deliveryDao;
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
		String[] codeSplited = productCode.split("\\$");
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
	public int selectPaymentNum() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean insertPayment(Payment payment) throws Exception {
		return paymentDao.insertPayment(payment);
	}

	

	@Override
	public boolean insertDelivery(Delivery delivery) throws Exception {
		return deliveryDao.insertDelivery(delivery);
	}

	@Override
	public boolean insertPoint(PointHistory pointHistory) throws Exception {
		return pointDao.insertPoint(pointHistory);
	}

	@Override
	public void deletePoint() throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteSuitCount() throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteCookie() throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean insertOrderByProduct(OrderByProduct orderByProduct) throws Exception {
		return orderDao.insertOrderByProduct(orderByProduct);
	}
	@Override
	public String insertProducts(Product product) throws Exception {
		return productDao.create(product);
		
	}
	
	@Override
	public int maxProductCodeNum() throws Exception {
		return productDao.maxProductCodeNum();
	}
	
	@Override
	public int maxPaymentCodeNum() throws Exception {
		return productDao.maxProductCodeNum();
	}
	
	@Override
	public int maxDeliveryCodeNum() throws Exception {
		return deliveryDao.selectMaxNextValDelivery();
	}

	@Override
	public boolean insertOrder(Order order) throws Exception {
		return orderDao.insertOrder(order);
	}

	@Override
	public int maxOrderNum() throws Exception {
		return orderDao.selectMaxNextValOrder();
	}

	@Override
	public boolean updateJacket(String jacketCode, int productCount) throws Exception {
		return orderDao.updateJacket(jacketCode, productCount);
	}

	@Override
	public boolean updatePants(String pantsCode, int productCount) throws Exception {
		return orderDao.updatePants(pantsCode, productCount);
	}
	
}
