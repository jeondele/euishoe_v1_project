package com.euishoe.orders.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.customers.service.CustomerService;
import com.euishoe.customers.service.CustomerServiceImpl;
import com.euishoe.deliveries.dto.Delivery;
import com.euishoe.orders.dto.Order;
import com.euishoe.orders.dto.OrderByProduct;
import com.euishoe.orders.service.OrderService;
import com.euishoe.orders.service.OrderServiceImpl;
import com.euishoe.payments.dto.Payment;
import com.euishoe.points.dto.PointHistory;
import com.euishoe.products.dto.Product;
import com.euishoe.products.service.ProductService;
import com.euishoe.products.service.ProductServiceImpl;

/**
 * /order에 대한 요청 처리 컨트롤러
 * @author 전상일
 *
 */
public class DoneOrderController implements Controller {
	
	OrderService orderService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		orderService = (OrderService)factory.getBean(OrderServiceImpl.class);
		
		//1.아디 값이 있는 지 없는지 확인
		String customerId = null;
		Cookie[] cookies = request.getCookies();
		for (Cookie cookie : cookies) {
			if(cookie.getName().equals("loginId")) {
				customerId = cookie.getValue();
			}
		}
		
		
		//2.상품 생성하기
		String productCode = request.getParameter("sendProductCode");
		String jacketCode = request.getParameter("sendJacketCode");
		String pantsCode = request.getParameter("sendPantsCode");
		int productNum = Integer.valueOf(request.getParameter("sendProductNum"));
		int productCount = Integer.valueOf(request.getParameter("sendProductCount"));
		
		Product product = new Product(productCode, jacketCode, pantsCode, productNum, productCount);
		//db에서 상품 생성
		
		
		//3.상품 코드번호 가져오기 
		int productCodeNum=0; //db에서 가져오기 currval한 값

		
		
		//4.결제 생성하기
		int paymentPoint = Integer.valueOf(request.getParameter("sendPaymentPoint")); 
		String paymentMethod = request.getParameter("sendPaymentMethod");
		String paymentIsRefund = "N";
		int paymentDiscount = paymentPoint;
		int paymentOriginCost = Integer.valueOf(request.getParameter("sendTotalCost"));
		int deliveryCharge = 2500;
		
		Payment payment = new Payment(paymentPoint, paymentMethod, paymentIsRefund, paymentDiscount, paymentOriginCost, deliveryCharge);
		//db에서 결제번호 생성
		
		//5.결제 번호 가져오기
		int paymentNum = 0;//db에서 가져오기 currval한 값이
		
		
		
		//6.배송 번호 가져오기
		String deliveryAddress1 = request.getParameter("sendDeliveryAddress1");
		String deliveryAddress2 = request.getParameter("sendDeliveryAddress2");
		
		String deliveryAddress = deliveryAddress1 + " "+ deliveryAddress2;
		String deliveryRecipient = request.getParameter("sendDeliveryRecipient");
		String deliveryRecipientPhoneNumber = request.getParameter("sendDeliveryRecipientPhoneNumber");
		String deliveryRequirement = request.getParameter("sendDeliveryRequirement");
		String deliveryStatus = "출고준비중";
		
		Delivery delivery = new Delivery(deliveryAddress, deliveryRecipient, deliveryRecipientPhoneNumber, deliveryRequirement, deliveryStatus);
		//db에서 배달 생성
		
		//7.결제 번호 가져오기
		int deliveryNum = 0;//db에서 가져오기 currval한 값
		
		
		
		//8.주문 생성하기
		if(customerId != null) {
			Order order = new Order(customerId, deliveryNum, paymentNum);
			//db에서 주문 생성
		}
		
		//9.주문 번호 가져오기
		int orderNum = 0; //db에서 가져오기 currval한 값
		
		//10.사용한 포인트 db에 추가
		int minusPointPolicyType = 5;
		PointHistory minusPointHistory = new PointHistory(minusPointPolicyType, customerId, -paymentPoint);
		//db에 포인트 차감액 추가
		
		//11.추가된 포인트 db에 추가
		int plusPointPolicyType = 3;
		int plusPoint = (int)(paymentOriginCost * 0.05);
		PointHistory plusPointHistory = new PointHistory(plusPointPolicyType, customerId, plusPoint);
		//db에 포인트 증가액 추가
		

		//12.주문당 상품 생성하기
		String finalProductCode = productCode+"$"+productCodeNum;
		OrderByProduct orderByProduct = new OrderByProduct(finalProductCode, orderNum);
		//db에 주문당 상품 생성
		
		//13.주문당 상품 번호 가져오기
		int orderByProductNum =0; //db에서 가져오기 currval  + 1 한 값
		
		//14. 상의 코드명으로 수량 변경 jacketCode productCount
		
		//15. 하의 코드명으로 수량 변경 pantsCode productCount
		
		
		
		
		
		
		mav.setView("/order/direct-shopping-cart.jsp"); // 결제창으로 설정
		return mav;
	}

}
