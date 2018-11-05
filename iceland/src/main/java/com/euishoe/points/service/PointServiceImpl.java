package com.euishoe.points.service;
/**
 * 쇼핑몰 포인트 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */

import com.euishoe.points.dao.PointDao;

public class PointServiceImpl implements PointService {
	private PointDao pointDao;

	public PointDao getPointDao() {
		return pointDao;
	}

	public void setPointDao(PointDao pointDao) {
		this.pointDao = pointDao;
	}
	
}
