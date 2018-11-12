package com.euishoe.comments.controller;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.euishoe.comments.dto.Comment;
import com.euishoe.comments.service.CommentService;
import com.euishoe.comments.service.CommentServiceImpl;
import com.euishoe.common.controller.AjaxController;
import com.euishoe.common.controller.ModelAndView;
import com.euishoe.common.factory.XMLObjectFactory;
import com.google.gson.Gson;

/**
 * 조건 검색에 따른 비동기 요청 처리 컨트롤러
 * @author 박의수
 *
 */
public class CommentReadController {
	
	CommentService commentService;
	Gson gson;
	
	public String handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		XMLObjectFactory factory = (XMLObjectFactory)request.getServletContext().getAttribute("objectFactory");
		commentService = (CommentService)factory.getBean(CommentServiceImpl.class);
		int qnaNum = (int) request.getAttribute("qnaNum");
		int reviewNum = (int) request.getAttribute("reviewNum");
		Comment comment = null;
		String commentJson = null;
		try {
			if(qnaNum != 0) {
				comment = commentService.readQnaComment(qnaNum);
				commentJson = gson.toJson(comment);
			}else if(reviewNum != 0) {
				comment = commentService.readReviewComment(reviewNum);
				commentJson = gson.toJson(comment);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return commentJson;
	}

}
