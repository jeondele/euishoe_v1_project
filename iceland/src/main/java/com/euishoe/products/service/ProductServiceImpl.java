package com.euishoe.products.service;
/**
 * 쇼핑몰 상품과 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */

import java.util.List;

import com.euishoe.products.dao.ProductDao;
import com.euishoe.products.dto.ProductInfo;

public class ProductServiceImpl implements ProductService {
	private ProductDao productDao;

	public ProductDao getProductDao() {
		return productDao;
	}

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	@Override
	public List<ProductInfo> newProductList() throws Exception {
		return productDao.newProductList();
	}

	@Override
	public List<ProductInfo> hitProductList() throws Exception {
		return productDao.hitProductList();
	}
	
}
