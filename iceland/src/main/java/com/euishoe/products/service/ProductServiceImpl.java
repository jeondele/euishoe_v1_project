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
import com.euishoe.qnas.dao.QnaDao;
import com.euishoe.qnas.dto.Qna;
import com.euishoe.reviews.dao.ReviewDao;
import com.euishoe.reviews.dto.Review;

import kr.or.kosta.blog.common.web.Params;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

public class ProductServiceImpl implements ProductService {
	private ProductDao productDao;
	private ReviewDao reviewDao;
	private QnaDao qnaDao;

	public ProductDao getProductDao() {
		return productDao;
	}

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	
	public ReviewDao getReviewDao() {
		return reviewDao;
	}

	public void setReviewDao(ReviewDao reviewDao) {
		this.reviewDao = reviewDao;
	}

	public QnaDao getQnaDao() {
		return qnaDao;
	}

	public void setQnaDao(QnaDao qnaDao) {
		this.qnaDao = qnaDao;
	}

	@Override
	public List<Map<String, Object>> newProductList() throws Exception {
		return productDao.newProductList();
	}

	@Override
	public List<Map<String, Object>> hitProductList() throws Exception {
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
	public List<Map<String, Object>> selectAll2() throws Exception {
		return productDao.selectAll();
	}
	
	@Override
	public List<Review> reviewListAll(int productNum, Params params) throws Exception {
		return reviewDao.reviewListAll(productNum, params);
	}

	@Override
	public List<Qna> qnaListAll(int productNum) throws Exception {
		return qnaDao.qnaListAll(productNum);
	}
	
	public List<ProductInfo> selectProductInfoByProductNum(int productNum) throws Exception {
		return productDao.selectProductInfoByProductNum(productNum);
	}
	
	@Override
	public List<String> convertToGson (List<Map<String, Object>> list) {
		Gson gson = new Gson();
		List<String> objectList = new ArrayList<String>();
		String json = null;
		
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
