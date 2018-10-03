package com.jariyo.mangather.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.ManGather;
import com.jariyo.repository.mapper.ManGatherMapper;

@WebServlet("/mangather/write.j")
public class WriteManGatherController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		ManGather board = new ManGather();
		
//		board.setBoardNo(boardNo);
		board.setTitle(request.getParameter("title"));
		board.setTeamName(request.getParameter("teamName"));
		board.setKindofGame(request.getParameter("kindofGame"));
		board.setAveAge(request.getParameter("aveAge"));
		board.setArea(request.getParameter("area"));
		board.setPlayDate(request.getParameter("playDate"));
		board.setContent(request.getParameter("content"));
		
		ManGatherMapper mapper= MyAppSqlConfig.getSqlSessionInstance().getMapper(ManGatherMapper.class);
		mapper.insertManGather(board);
		
		response.sendRedirect(request.getContextPath() + "/mangather/list.j");
		
	}

}
