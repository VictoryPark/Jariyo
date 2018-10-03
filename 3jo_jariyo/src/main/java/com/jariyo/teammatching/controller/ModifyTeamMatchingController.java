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

@WebServlet("/teammatching/modify.j")
public class ModifyTeamMatchingController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		TeamMatchingMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(TeamMatchingMapper.class);

		TeamMatching board = new TeamMatching();
		board.setBoardNo(Integer.parseInt(request.getParameter("boardNo")));
		board.setTitle(request.getParameter("title"));
		board.setTeamName(request.getParameter("teamName"));
		board.setAveAge(request.getParameter("aveAge"));
		board.setArea(request.getParameter("area"));
		board.setPlaceName(request.getParameter("placeName"));
		board.setKindofGame(request.getParameter("kindofGame"));
		board.setPlayDate(request.getParameter("playDate"));
		board.setContent(request.getParameter("content"));
		
		System.out.println(request.getParameter("title"));
		System.out.println(request.getParameter("kindofGame"));
		System.out.println(request.getParameter("area"));
		System.out.println(request.getParameter("placeName"));
		
		mapper.modifyTeamMatching(board);
		
		response.sendRedirect(request.getContextPath() + "/teammatching/list.j");
	}
	
}
