package com.euishoe.noncustomers.service;
/**
 * 쇼핑몰 비회원과 관련된  서비스 인터페이스를 기반으로 구현
 * 
 * @author 전상일
 *
 */

import com.euishoe.noncustomers.dao.NoncustomerDao;

public class NoncustomerServiceImpl implements NoncustomerService {
	private NoncustomerDao noncustomerDao;

	public NoncustomerDao getNoncustomerDao() {
		return noncustomerDao;
	}

	public void setNoncustomerDao(NoncustomerDao noncustomerDao) {
		this.noncustomerDao = noncustomerDao;
	}
	
}
