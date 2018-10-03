package com.jariyo.mangather.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.mapper.ManGatherMapper;

@WebServlet("/mangather/delete.j")
public class DeleteManGatherController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		
		ManGatherMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(ManGatherMapper.class);
		mapper.deleteManGather(boardNo);
		
		response.sendRedirect(request.getContextPath() + "/mangather/list.j");
	}
	
}
