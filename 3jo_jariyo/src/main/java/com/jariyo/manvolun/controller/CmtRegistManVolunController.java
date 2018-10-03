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

@WebServlet("/manvolun/registcomment.j")
public class CmtRegistManVolunController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	
		ManVolunMapper mapper =
				MyAppSqlConfig.getSqlSessionInstance().getMapper(ManVolunMapper.class);

		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		
		ManVolunComment comment = new ManVolunComment();
		comment.setBoardNo(boardNo);
		comment.setContent(request.getParameter("content"));
		comment.setWriterId(request.getParameter("writerId"));
		
		mapper.insertManVolunComment(comment);
		
		response.sendRedirect(request.getContextPath() + "/manvolun/detail.j?boardNo=" + boardNo);

	
	}

}
