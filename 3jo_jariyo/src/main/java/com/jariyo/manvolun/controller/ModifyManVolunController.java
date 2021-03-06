	package com.jariyo.manvolun.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.ManVolun;
import com.jariyo.repository.mapper.ManVolunMapper;


@WebServlet("/manvolun/modify.j")
public class ModifyManVolunController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		ManVolunMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(ManVolunMapper.class);
		
		ManVolun board = new ManVolun();
		board.setBoardNo(Integer.parseInt(request.getParameter("boardNo")));
		board.setTitle(request.getParameter("title"));
		board.setKindofGame(request.getParameter("kindofGame"));
		board.setArea(request.getParameter("area"));
		board.setCareer(request.getParameter("career"));
		board.setContent(request.getParameter("content"));
		
//		System.out.println(request.getParameter("title"));
//		System.out.println(request.getParameter("kindofGame"));
//		System.out.println(request.getParameter("area"));
//		System.out.println(request.getParameter("career"));
		
		mapper.modifyManVolun(board);
		
		
		response.sendRedirect(request.getContextPath() + "/manvolun/list.j");
	
	}
	
}
