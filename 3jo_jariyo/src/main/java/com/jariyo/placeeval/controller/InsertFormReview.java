package com.jariyo.placeeval.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/placeeval/insertform.do")
public class InsertFormReview extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int placeNo = Integer.parseInt(request.getParameter("no"));
		
		request.setAttribute("plno", placeNo);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/placeeval/review2.jsp");
		rd.forward(request, response);
		
	}

	
	
}
