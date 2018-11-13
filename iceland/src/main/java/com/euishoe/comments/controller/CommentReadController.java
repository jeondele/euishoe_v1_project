package com.euishoe.comments.controller;

import java.io.PrintWriter;
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
		String qnaNum = request.getParameter("qnaNum");
		String reviewNum = request.getParameter("reviewNum");
		Comment comment = null;
		String commentJson = null;
		PrintWriter out = null;
		try {
			out = response.getWriter();
			if(Integer.parseInt(qnaNum) != 0) {
				comment = commentService.readQnaComment(Integer.parseInt(qnaNum));
				commentJson = gson.toJson(comment);
				out.println(commentJson);
			}else if(Integer.parseInt(reviewNum) != 0) {
				comment = commentService.readReviewComment(Integer.parseInt(reviewNum));
				commentJson = gson.toJson(comment);
				out.println(commentJson);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
