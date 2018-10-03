package com.jariyo.teammatching.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.MatchingComment;
import com.jariyo.repository.domain.Member;
import com.jariyo.repository.mapper.TeamMatchingMapper;

@WebServlet("/teammatching/registcomment.j")
public class CmtRegistTeamMatchingController extends HttpServlet {

	@Override
	protected void doPost
		(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		

		
		
		TeamMatchingMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(TeamMatchingMapper.class);
		
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		
		MatchingComment comment = new MatchingComment();
		comment.setBoardNo(boardNo);
		comment.setContent(request.getParameter("content"));
		comment.setWriterId(request.getParameter("writerId"));
		
		mapper.insertMatchingComment(comment);
		
		response.sendRedirect(request.getContextPath() + "/teammatching/detail.j?boardNo=" + boardNo);
	}
	
}
