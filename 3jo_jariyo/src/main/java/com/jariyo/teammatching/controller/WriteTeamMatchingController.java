package com.jariyo.teammatching.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.TeamMatching;
import com.jariyo.repository.mapper.TeamMatchingMapper;

@WebServlet("/teammatching/write.j")
public class WriteTeamMatchingController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		
		TeamMatching board = new TeamMatching();
		
		board.setTitle(request.getParameter("title"));
		board.setTeamName(request.getParameter("teamName"));
		board.setAveAge(request.getParameter("aveAge"));
		board.setArea(request.getParameter("area"));
		board.setPlaceName(request.getParameter("placeName"));
		board.setPlayDate(request.getParameter("playDate"));
		board.setContent(request.getParameter("content"));
		board.setKindofGame(request.getParameter("kindofGame"));
		

		
		TeamMatchingMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(TeamMatchingMapper.class);
		mapper.insertTeamMatching(board);
		
		response.sendRedirect(request.getContextPath() + "/teammatching/list.j");
	}
	
}
