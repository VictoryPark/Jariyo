package com.jariyo.teammatching.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.MatchingComment;
import com.jariyo.repository.mapper.TeamMatchingMapper;

@WebServlet("/teammatching/updatecomment.j")
public class CmtUpdateTeamMatchingController extends HttpServlet {

	@Override
	protected void doPost
		(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		TeamMatchingMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(TeamMatchingMapper.class);
		
		int commentNo = Integer.parseInt(request.getParameter("commentNo"));
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		
		MatchingComment comment = new MatchingComment();
		comment.setContent(request.getParameter("content"));
		comment.setCommentNo(commentNo);
		
		mapper.updateMatchingComment(comment);
		
		response.sendRedirect(request.getContextPath() + "/teammatching/detail.j?boardNo=" + boardNo);
	}

}
