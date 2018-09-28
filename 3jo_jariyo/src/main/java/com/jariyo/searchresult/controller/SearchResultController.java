package com.jariyo.searchresult.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/searchresult.do")
public class SearchResultController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
//		String startDate = request.getParameter("startdate");
//	 	String endDate = request.getParameter("enddate");
	 	String searchWord = request.getParameter("searchword");
		
	 	response.sendRedirect("list.do");
		
	}

	
}
