package com.jariyo.manvolun.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.mapper.ManVolunMapper;


@WebServlet("/manvolun/delete.j")
public class DeleteManVolunController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		
		ManVolunMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(ManVolunMapper.class);
		mapper.deleteManVolun(boardNo);
		
		response.sendRedirect(request.getContextPath() + "/manvolun/list.j");
	}
	
}
