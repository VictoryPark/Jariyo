package com.jariyo.mangather.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.ManGather;
import com.jariyo.repository.mapper.ManGatherMapper;

@WebServlet("/mangather/modify.do")
public class ModifyManGatherController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ManGatherMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(ManGatherMapper.class);
		
		ManGather board = new ManGather();
		board.setBoardNo(Integer.parseInt(request.getParameter("boardNo")));
		board.setTitle(request.getParameter("title"));
		board.setTeamName(request.getParameter("teamName"));
		board.setKindofGame(request.getParameter("kindofGame"));
		board.setAveAge(request.getParameter("aveAge"));
		board.setArea(request.getParameter("area"));
		board.setPlayDate(request.getParameter("playDate"));
		board.setContent(request.getParameter("content"));
		
		System.out.println(request.getParameter("title"));
		System.out.println(request.getParameter("kindofGame"));
		System.out.println(request.getParameter("area"));
		System.out.println(request.getParameter("career"));
		mapper.modifyManGather(board);
		
		response.sendRedirect(request.getContextPath() + "/mangather/list.do");
	
	}
	

}
