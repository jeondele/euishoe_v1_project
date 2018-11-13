package com.euishoe.comments.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.comments.dto.Comment;
import com.euishoe.comments.service.CommentService;
import com.euishoe.comments.service.CommentServiceImpl;
import com.euishoe.common.controller.AjaxController;
import com.euishoe.common.controller.Controller;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.google.gson.Gson;

/**
 * 조건 검색에 따른 비동기 요청 처리 컨트롤러
 * @author 박의수
 *
 */
public class CommentReadController implements Controller {
	
	CommentService commentService;
	Gson gson;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		
		response.setContentType("text/plain; charset=utf-8");
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		commentService = (CommentService)factory.getBean(CommentServiceImpl.class);
		String productNum = request.getParameter("productNum");
		String commentJson = null;
		PrintWriter out = null;
		List<HashMap<String,Object>> list = null; 
		try {
			out = response.getWriter();
				list = commentService.readComment(Integer.parseInt(productNum));
				commentJson = gson.toJson(list);
				out.println(commentJson);
				System.out.println(commentJson);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
