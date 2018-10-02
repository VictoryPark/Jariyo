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

@WebServlet("/mangather/detail.do")
public class DetailManGatherController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ManGatherMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(ManGatherMapper.class);
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		ManGather board = mapper.selectManGatherByNo(boardNo);
		
		request.setAttribute("board", board);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/mangather/manGatherDetail.jsp");
		rd.forward(request, response);
	}

}
