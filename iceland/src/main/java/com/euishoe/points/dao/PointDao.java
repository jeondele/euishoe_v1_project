package com.euishoe.points.dao;

import java.util.HashMap;
import java.util.List;

/**
 * 쇼핑몰 포인트와 관련된 Dao 인터페이스
 * 
 * @author 전상일
 *
 */
public interface PointDao {
	
	//포인트 생성
	public void create(String customerId) throws Exception;
	
	//회원별 포인트 지급내역
	public List<HashMap<String, Object>> CustomerPointList(String customerId) throws Exception;
}
