package com.jariyo.teammatching.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.mapper.TeamMatchingMapper;

@WebServlet("/teammatching/deletecomment.j")
public class CmtDeleteTeamMatchingController extends HttpServlet {

	@Override
	protected void doGet(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		TeamMatchingMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(TeamMatchingMapper.class);
		
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		int commentNo = Integer.parseInt(request.getParameter("commentNo"));
		
		mapper.deleteMatchingComment(commentNo);
		
		response.sendRedirect(request.getContextPath() + "/teammatching/detail.j?boardNo=" + boardNo);
		
	}

}
