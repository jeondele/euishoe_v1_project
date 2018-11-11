package com.euishoe.products.service;
/**
 * 쇼핑몰 상품과 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import com.euishoe.products.dao.ProductDao;
import com.euishoe.products.dto.ProductInfo;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

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

	@Override
	public List<String> selectImageRefByProductNum(int productNum) throws Exception {
		return productDao.selectImageRefByProductNum(productNum);
	}

	@Override
	public List<Map<String, Object>> selectAll() throws Exception {
		return productDao.selectAll();
	}

	@Override
	public List<ProductInfo> selectProductInfoByProductNum(int productNum) throws Exception {
		return productDao.selectProductInfoByProductNum(productNum);
	}
	
	@Override
	public List<String> convertToGson () {
		Gson gson = new Gson();
		List<String> objectList = new ArrayList<String>();
		List<Map<String, Object>> list = null;
		String json = null;
		try {
			list = selectAll();
		} catch (Exception e) {}
		
		for (Map<String, Object> productInfo : list) {
			Iterator<String> keyset = productInfo.keySet().iterator();
			JsonObject object = new JsonObject();
			while(keyset.hasNext()) {
				String key = keyset.next();
				object.addProperty(key, String.valueOf(productInfo.get(key)));
			}
			json = gson.toJson(object);
			objectList.add(json);
		}
		return objectList;
	}
	
}
