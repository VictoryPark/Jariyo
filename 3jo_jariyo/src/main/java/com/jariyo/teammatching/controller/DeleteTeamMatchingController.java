package com.jariyo.teammatching.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.mapper.TeamMatchingMapper;

@WebServlet("/teammatching/delete.j")
public class DeleteTeamMatchingController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
	
	TeamMatchingMapper mapper = 
			MyAppSqlConfig.getSqlSessionInstance().getMapper(TeamMatchingMapper.class);
	mapper.deleteTeamMatching(boardNo);
	
	response.sendRedirect(request.getContextPath() + "/teammatching/list.j");
	}

}
