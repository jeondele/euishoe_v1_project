package com.euishoe.products.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.common.web.PageBuilder;
import com.euishoe.common.web.Params;
import com.euishoe.products.service.ProductService;
import com.euishoe.products.service.ProductServiceImpl;
import com.euishoe.reviews.dto.Review;

/**
 * /user/list.mall에 대한 요청 처리 컨트롤러
 * @author 김기정
 *
 */
public class ProductDetailController implements Controller {
	
	ProductService productService;
	Params params;
	PageBuilder pageBuilder;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		productService = (ProductService)factory.getBean(ProductServiceImpl.class);
		String productNum = request.getParameter("productNum");
		System.out.println(productNum);
		List<Map<String, Object>> list = null;
		try {
			list = productService.selectAllById(Integer.valueOf(productNum));
		} catch (Exception e) {}
		
		String requestPage = request.getParameter("page");
		if(requestPage == null || requestPage.equals("")){
		  requestPage = "1";
		}
		
		String num = (String)request.getParameter("productNum");
		String qnaisLock = null;
		String customerId = null;
		int typeNum = 0;
		int reviewScore = 0;
		List<HashMap<String,Object>> reviewlist = null;
		List<HashMap<String,Object>> qnalist = null;
		int rowCount = 0;
		
		params = new Params(Integer.parseInt(requestPage), 5, 1, null, null);
		System.out.println("222222222");
		try {
			reviewlist = productService.reviewDynamicReviewList(Integer.parseInt(num), customerId, reviewScore, params);
			qnalist = productService.qnaDynamicListAll(Integer.parseInt(num), qnaisLock, customerId, typeNum, params);
			System.out.println("1." + reviewlist);
			System.out.println("2." + qnalist);
			rowCount = productService.qnaCountBySearch(Integer.parseInt(num));
			pageBuilder = new PageBuilder(params, rowCount);
			pageBuilder.build();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mav.addObject("ReviewList", reviewlist);
		mav.addObject("QnaList", qnalist);
		System.out.println(list);
		mav.addObject("selectAllById", list);
		mav.setView("/product/details/product-detail.jsp");
		return mav;
	}
}
