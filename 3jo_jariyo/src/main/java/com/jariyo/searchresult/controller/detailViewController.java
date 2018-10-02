package com.jariyo.searchresult.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.Place;
import com.jariyo.repository.mapper.SearchResultMapper;



@WebServlet("/board/detailView.do")
public class detailViewController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
//		String startDate = request.getParameter("startdate");
//	 	String endDate = request.getParameter("enddate");
		int no = Integer.parseInt(request.getParameter("no"));

		SearchResultMapper srmapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(SearchResultMapper.class);
	 	
	 	Place detailplace = srmapper.selectPlaceByNo(no);
	 	
	 	
	 	
	 	request.setAttribute("detailplace", detailplace);
	 	
	 	
	 	

	 	
	 	RequestDispatcher rd = request.getRequestDispatcher("/jsp/searchresult/detail.jsp");
	 	rd.forward(request, response);
	 	
		
	}

	
}
