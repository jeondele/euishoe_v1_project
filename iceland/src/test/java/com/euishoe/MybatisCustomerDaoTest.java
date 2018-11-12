package com.euishoe;

import java.io.IOException;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;

import com.euishoe.customers.dao.CustomerDao;
import com.euishoe.customers.dao.MybatisCustomerDao;
import com.euishoe.customers.dto.Customer;
import com.google.gson.Gson;
import com.google.common.reflect.TypeToken;
import java.lang.reclect.Type;
import java.net.URLDecoder;

public class MybatisCustomerDaoTest {
	private static final String NAMESPACE = "com.euishoe.customers.";
	String resource = "mybatis-config.xml"; // resource 밑에 바로 있으니까 상대경로
	SqlSessionFactory sqlSessionFactory;

	Logger logger = Logger.getLogger(MybatisCustomerDaoTest.class);
	CustomerDao customerDao;

	//@Before
	public void setUp() {
		Reader reader = null;
		try {
			reader = Resources.getResourceAsReader(resource);
		} catch (IOException e) {
			e.printStackTrace();
		}
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader, "development");
		logger.debug("sqlSessionFactory 생성 완료!!!!!!");
		customerDao = new MybatisCustomerDao();
		((MybatisCustomerDao) customerDao).setSqlSessionFactory(sqlSessionFactory);

	}
	
	
	//@Test
	// 매개변수 하나 전달 : 사원번호 100번인 사람의 salary
	public void testCertify() {
		String customerId = "bangry";
		String customerPassword = "1958";
		Map<String, String> params = new HashMap<>();
		params.put("customerId", customerId);
		params.put("customerPassword", customerPassword);
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Customer customer = sqlSession.selectOne(NAMESPACE + "certify", params);
		logger.debug(customer);
		sqlSession.close();
	}
	
	@Test
	public void test() {
		
		Gson gson = new Gson();
		String json = "%7B%22image_ref%22%3A%22%2Ficeland%2Fimages%2FFW%EC%98%B4%EB%AF%80+%EC%8B%B1%EA%B8%80%EC%88%98%ED%8A%B8%28Black%29%2Fhss_bk%242%24main%241.jpg%22%2C%22PRODUCT_PRICE%22%3A100000%2C%22product_count%22%3A10%2C%22PRODUCT_NUM%22%3A2%2C%22PRODUCT_NAME%22%3A%22FW+%EC%98%B4%EB%AF%80+%EC%8B%B1%EA%B8%80%EC%88%98%ED%8A%B8_Black%22%7D";
		try {
			json = URLDecoder.decode(json, "UTF-8");
			System.out.println(json);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HashMap map = gson.fromJson(json, HashMap.class);
		System.out.println(map.size());
		System.out.println(map.toString());
		System.out.println(map.get("image_ref"));
		/*
		JSONObject fieldsJson = new JSONObject(json);
		String value = fieldsJson.getString(key);
		Type mapType = new TypeToken<Map<String, Map>>(){}.getType();  
		Map<String, String[]> son = new Gson().fromJson(easyString, mapType);
		*/
	}
}
