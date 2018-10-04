package com.jariyo.teammatching.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jariyo.repository.domain.Member;

@WebServlet("/teammatching/writeForm.j")
public class WriteFormTeamMatchingController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		Member mem = (Member)session.getAttribute("user");
		
		String name = mem.getName();
		System.out.println(name);
		request.setAttribute("tName", name);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/teammatching/teammatchingWrite.jsp");
		rd.forward(request, response);
	}
	
}
