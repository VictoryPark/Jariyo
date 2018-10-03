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



@WebServlet("/jariyo/detailView.j")
public class detailViewController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
//		String startDate = request.getParameter("startdate");
//	 	String endDate = request.getParameter("enddate");
		int no = Integer.parseInt(request.getParameter("no"));

		SearchResultMapper srmapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(SearchResultMapper.class);
	 	
	 	Place detailplace = srmapper.selectPlaceByNo(no);
	 	String wds = detailplace.getWeekdaysStart();
	 	String wde = detailplace.getWeekdaysEnd();
	 	String wks = detailplace.getWeekendsStart();
	 	String wke = detailplace.getWeekendsEnd();
	 	
	 	String wdsResult = wds.substring(0, wds.indexOf("."));
	 	String wdeResult = wde.substring(0, wde.indexOf("."));
	 	String wksResult = wks.substring(0, wks.indexOf("."));
	 	String wkeResult = wke.substring(0, wke.indexOf("."));
	 	

	 	request.setAttribute("detailplace", detailplace);
	 	
	 	request.setAttribute("wdsResult", wdsResult);
	 	request.setAttribute("wdeResult", wdeResult);
	 	request.setAttribute("wksResult", wksResult);
	 	request.setAttribute("wkeResult", wkeResult);
	 	
	 	System.out.println(wdsResult);

	 	
	 	RequestDispatcher rd = request.getRequestDispatcher("/jsp/searchresult/detail.jsp");
	 	rd.forward(request, response);
	 	
		
	}

	
}
