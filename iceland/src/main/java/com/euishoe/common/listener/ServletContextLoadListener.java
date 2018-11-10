package com.euishoe.common.listener;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.log4j.Logger;

import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.products.dto.ProductInfo;
import com.euishoe.products.service.ProductService;
import com.euishoe.products.service.ProductServiceImpl;


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
		List<ProductInfo> newProductSrc = null;
		List<ProductInfo> hitProductSrc = null;
		try {
			newProductSrc = productService.newProductList();
			hitProductSrc = productService.hitProductList();
			servletContext.setAttribute("newProductSrc", newProductSrc);
			servletContext.setAttribute("hitProductSrc", hitProductSrc);
		} catch (Exception e) {
			e.printStackTrace();
		}
		logger.debug("XMLObjectFactory 생성 및 ServletContext에 등록 완료!");
	}
	
	
	public void contextDestroyed(ServletContextEvent event)  {
		logger.debug("ServletContext(서블릿컨테이너) 종료.");
    }
}
