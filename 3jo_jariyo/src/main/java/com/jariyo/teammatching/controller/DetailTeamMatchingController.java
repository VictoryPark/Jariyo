package com.jariyo.teammatching.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.TeamMatching;
import com.jariyo.repository.mapper.TeamMatchingMapper;

@WebServlet("/teammatching/detail.do")
public class DetailTeamMatchingController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		TeamMatchingMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(TeamMatchingMapper.class);
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		TeamMatching board = mapper.selectTeamMatchingByNo(boardNo);
	
		request.setAttribute("board", board);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/teammatching/teammatchingDetail.jsp");
		rd.forward(request, response);
	}

}
