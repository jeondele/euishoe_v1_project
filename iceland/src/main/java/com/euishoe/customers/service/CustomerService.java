package com.euishoe.customers.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.common.controller.ModelAndView;
import com.euishoe.customers.dto.Customer;

/**
 * 쇼핑몰 고객과 관련된 서비스 인터페이스
 * 
 * @author 전상일, 박시원, 백욱기
 *
 */
public interface CustomerService {
	
	// 로그인시 회원 여부 인증
	public Customer certify(String customerId, String customerPassword) throws Exception;
	
	// 회원 가입 
	public void create(Customer customer) throws Exception;
	
	// 장바구니 가져오기
	public List<HashMap<String, Object>> listCartForLogin(String customerId);
	
	// 위시리스트 가져오기
	public List<HashMap<String, Object>> listWish(String customerId);
	
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response, ModelAndView mav,
			Customer customer, String rememberCustomerId);
	
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response, ModelAndView mav);	
	
	// 회원정보get by id
	public Customer getCustomerInfo(String customerId) throws Exception;
	
	// 회원정보 수정
	public void modifyInfo(Customer customer) throws Exception;
	
	// 회원 커스터마이징 정보 수정
	public void modifyCustomizingInfo(Map<String, Object> map) throws Exception;

	Map<String, Object> customerOrderInfo(String customerId) throws Exception;
	
	
}
