package com.euishoe.images.service;

import com.euishoe.images.dao.ImageDao;

/**
 * 쇼핑몰에 존재하는 사진과 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */
public class ImageServiceImpl implements ImageService {
	private ImageDao imageDao;

	public ImageDao getImageDao() {
		return imageDao;
	}

	public void setImageDao(ImageDao imageDao) {
		this.imageDao = imageDao;
	}
	
}

