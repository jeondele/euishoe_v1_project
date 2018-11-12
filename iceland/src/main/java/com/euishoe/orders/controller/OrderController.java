package com.euishoe.orders.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.orders.service.OrderService;
import com.euishoe.orders.service.OrderServiceImpl;
import com.euishoe.products.dto.Product;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

/**
 * /order에 대한 요청 처리 컨트롤러
 * @author 김기정
 *
 */
public class OrderController implements Controller {
	
	OrderService orderService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		orderService = (OrderService)factory.getBean(OrderServiceImpl.class);
		
		/*// 주문을 위한 product객체생성, orderbyproduct객체 생성
		Product product = new Product();  //프론트에서 보낸 json객체를 통해 생성할 product객체
		Gson gson = new Gson();
		Object obj = request.getParameter("jsonData");
		product = gson.fromJson(obj.toString(), Product.class);
		try {
			orderService.createProduct(product);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		mav.setView("/order/shopping-cart.jsp"); // 결제창으로 설정
		
		return mav;
	}

}
