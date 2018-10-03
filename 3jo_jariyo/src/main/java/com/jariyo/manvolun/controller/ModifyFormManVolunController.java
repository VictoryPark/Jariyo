package com.jariyo.manvolun.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.ManVolun;
import com.jariyo.repository.mapper.ManVolunMapper;


@WebServlet("/manvolun/modifyForm.j")
public class ModifyFormManVolunController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		ManVolunMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(ManVolunMapper.class);
		ManVolun board = mapper.selectManVolunByNo(Integer.parseInt(request.getParameter("boardNo")));
		request.setAttribute("board", board);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/manvolun/manVolunModify.jsp");
		rd.forward(request, response);
	}
	
}
