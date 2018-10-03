package com.jariyo.manvolun.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.ManVolun;
import com.jariyo.repository.domain.Member;
import com.jariyo.repository.mapper.ManVolunMapper;

@WebServlet("/manvolun/writeForm.j")
public class WriteFormManVolunController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		//
		HttpSession session = request.getSession();
		Member mem = (Member)session.getAttribute("user");
		
		String name = mem.getName();
		System.out.println(name);
		request.setAttribute("mName", name);
		
//		request.setAttribute("board", board);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/manvolun/manVolunWrite.jsp");
		rd.forward(request, response);
	}
	
}
