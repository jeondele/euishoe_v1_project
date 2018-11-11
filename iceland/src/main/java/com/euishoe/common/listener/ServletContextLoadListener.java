package com.euishoe.common.listener;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.log4j.Logger;

import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.products.dto.ProductInfo;
import com.euishoe.products.service.ProductService;
import com.euishoe.products.service.ProductServiceImpl;
import com.google.gson.Gson;
import com.google.gson.JsonObject;


/**
 * ServletContext 생명주기(생성/소멸) 관련 이벤트 리스너
 * @author 전상일
 */
public class ServletContextLoadListener implements ServletContextListener {
	
	private Logger logger = Logger.getLogger(ServletContextLoadListener.class);
	
	public void contextInitialized(ServletContextEvent event)  {
		ServletContext servletContext = event.getServletContext();
		String configLocation = servletContext.getInitParameter("configLocation");
		
		XMLObjectFactory objectFactory = null;
		try {
			objectFactory = new XMLObjectFactory(configLocation);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 모든 서블릿, JSP들이 공유할 수 있도록 ServletContext에 DaoFactory 저장
		servletContext.setAttribute("objectFactory", objectFactory);
		
		ProductService productService;
		XMLObjectFactory factory = (XMLObjectFactory)servletContext.getAttribute("objectFactory");
		productService = (ProductService)factory.getBean(ProductServiceImpl.class);
		
		List<String> gsonNewListAll = null;
		List<String> gsonHitListAll = null;
		try {
			gsonNewListAll = productService.convertToGson(productService.newProductList());
			gsonHitListAll = productService.convertToGson(productService.hitProductList());
		} catch (Exception e1) {}
		
		ArrayList<HashMap<String, Object>> jsonObjectNewList = new ArrayList<HashMap<String, Object>>();
		ArrayList<HashMap<String, Object>> jsonObjectHitList = new ArrayList<HashMap<String, Object>>();
		Gson gson = new Gson();
		JsonObject object = new JsonObject();
		
		for(int i = 0 ; i < gsonNewListAll.size(); i++) {	
			HashMap<String, Object> convertToJson = gson.fromJson(gsonNewListAll.get(i), HashMap.class);
			jsonObjectNewList.add(convertToJson);
	 	}
		
		for(int i = 0 ; i < gsonHitListAll.size(); i++) {	
			HashMap<String, Object> convertToJson = gson.fromJson(gsonHitListAll.get(i), HashMap.class);
			jsonObjectHitList.add(convertToJson);
	 	}
		
		try {
			servletContext.setAttribute("newProductSrc", jsonObjectNewList);
			servletContext.setAttribute("hitProductSrc", jsonObjectHitList);
			servletContext.setAttribute("gsonNewProductSrc", gsonNewListAll);
			servletContext.setAttribute("gsonHitProductSrc", gsonHitListAll);
		} catch (Exception e) {
			e.printStackTrace();
		}
		logger.debug("XMLObjectFactory 생성 및 ServletContext에 등록 완료!");
	}
	
	
	public void contextDestroyed(ServletContextEvent event)  {
		logger.debug("ServletContext(서블릿컨테이너) 종료.");
    }
}
