package com.euishoe.qnas.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.euishoe.common.web.PageBuilder;
import com.euishoe.common.web.Params;
import com.euishoe.qnas.service.QnaService;
import com.euishoe.qnas.service.QnaServiceImpl;
import com.google.gson.Gson;

/*
 * 
 * 조건 검색에 따른 qan list 처리를 위한 컨트롤러
 * @author 김기정
 *
 */
public class QnaListController implements Controller {
	
	QnaService qnaService;
	Params params;
	PageBuilder pageBuilder;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		ModelAndView mav = new ModelAndView();
		
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		qnaService = (QnaService)factory.getBean(QnaServiceImpl.class);
		response.setContentType("text/plain; charset=utf-8");
		
		String requestPage = request.getParameter("page");
		if (requestPage == null || requestPage.equals("")) {
			requestPage = "1";
		}
		
		String productNum = request.getParameter("productNum");
		String qnaisLock = request.getParameter("qnaisLock");
		String customerId = request.getParameter("customerId");
		String typeNum = request.getParameter("typeNum");
		
		List<HashMap<String,Object>> list = null;
		params = new Params(5, 5, 5, null, null);
		String jsonData = "";
		PrintWriter out = null;
		StringBuffer sb = new StringBuffer();
		int rowCount = 0;
		try {
			request.setCharacterEncoding("utf-8");
			list = qnaService.qnaDynamicListAll(Integer.parseInt(productNum), qnaisLock, customerId, Integer.parseInt(typeNum), params);
			pageBuilder = new PageBuilder(params, rowCount);
			pageBuilder.build();
			Gson gson = new Gson();
			JSONObject jsonObj = new JSONObject();
			out = response.getWriter();
			
			for (HashMap<String, Object> hashMap : list) {
				jsonObj.put("qnaNum", hashMap.get("QNA_NUM"));
				jsonObj.put("qnaTypeNum", hashMap.get("QNA_TYPE_NUM"));
				jsonObj.put("customerId", hashMap.get("CUSTOMER_ID"));
				jsonObj.put("qnaTitle", hashMap.get("QNA_TITLE"));
				jsonObj.put("qnaContent", hashMap.get("QNA_CONTENT"));
				jsonObj.put("qnaPassword", hashMap.get("QNA_PASSWORD"));
				jsonObj.put("qnaIsanswered", hashMap.get("QNA_ISANSWERED"));
				jsonObj.put("qnaIsLock", hashMap.get("QNA_ISLOCK"));
				jsonObj.put("qnaRank", hashMap.get("QNA_RANK"));
				jsonObj.put("qnaIsdeleted", hashMap.get("QNA_ISDELETED"));
				jsonObj.put("qnaRegdate", hashMap.get("QNA_REGDATE"));
				jsonObj.put("productNum", hashMap.get("PRODUCT_NUM"));

				jsonData = jsonObj.toJSONString();
				System.out.println("프론트로 보내줄 jsonData: "+jsonData);
				jsonData = jsonData + ",";
				sb.append(jsonData);
				System.out.println(jsonData);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
