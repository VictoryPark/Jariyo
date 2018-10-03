package com.jariyo.mangather.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.mapper.ManGatherMapper;

@WebServlet("/mangather/deletecomment.j")
public class CmtDeleteManGatherController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ManGatherMapper mapper= 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(ManGatherMapper.class);

		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		int commentNo = Integer.parseInt(request.getParameter("commentNo"));
		
		mapper.deleteGatherComment(commentNo);
		
		response.sendRedirect(request.getContextPath() + "/mangather/detail.j?boardNo=" + boardNo);
		
	}

	
}
