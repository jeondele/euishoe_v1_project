package com.euishoe.points.service;
/**
 * 쇼핑몰 포인트 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */

import java.util.HashMap;
import java.util.List;

import com.euishoe.points.dao.PointDao;
import com.euishoe.points.dto.PointHistory;

public class PointServiceImpl implements PointService {
	private PointDao pointDao;

	public PointDao getPointDao() {
		return pointDao;
	}

	public void setPointDao(PointDao pointDao) {
		this.pointDao = pointDao;
	}

	@Override
	public void create(String customerId) throws Exception {
		pointDao.create(customerId);
	}

	@Override
	public List<HashMap<String, Object>> CustomerPointList(String customerId) throws Exception {
		return pointDao.CustomerPointList(customerId);
	}
}
