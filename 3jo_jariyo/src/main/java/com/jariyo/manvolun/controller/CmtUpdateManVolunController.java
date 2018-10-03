package com.jariyo.manvolun.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.ManVolunComment;
import com.jariyo.repository.mapper.ManVolunMapper;
import com.jariyo.repository.mapper.TeamMatchingMapper;

@WebServlet("/manvolun/updatecomment.j")
public class CmtUpdateManVolunController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		
		ManVolunMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(ManVolunMapper.class);
		
		int commentNo = Integer.parseInt(request.getParameter("commentNo"));
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		
		ManVolunComment comment = new ManVolunComment();
		comment.setContent(request.getParameter("content"));
		comment.setCommentNo(commentNo);
		
		mapper.updateManVolunComment(comment);
		
		response.sendRedirect(request.getContextPath() + "/manvolun/detail.j?boardNo=" + boardNo);

		
	}

	
}
