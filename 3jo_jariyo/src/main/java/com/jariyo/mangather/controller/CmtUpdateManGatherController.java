package com.jariyo.mangather.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.ManGatherComment;
import com.jariyo.repository.mapper.ManGatherMapper;

@WebServlet("/mangather/updatecomment.j")
public class CmtUpdateManGatherController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		ManGatherMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(ManGatherMapper.class);
		
		int commentNo = Integer.parseInt(request.getParameter("commentNo"));
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		
		ManGatherComment comment = new ManGatherComment();
		comment.setContent(request.getParameter("content"));
		comment.setCommentNo(commentNo);
		
		mapper.updateGatherComment(comment);
		
		response.sendRedirect(request.getContextPath() + "/mangather/detail.j?boardNo=" + boardNo);

	}

	
}
