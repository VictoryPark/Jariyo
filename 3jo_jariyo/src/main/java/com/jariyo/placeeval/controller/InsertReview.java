package com.jariyo.placeeval.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.PlaceEval;
import com.jariyo.repository.mapper.PlaceEvalMapper;

@WebServlet("/placeeval/insert.j")
public class InsertReview extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("utf-8");
		
		String star = request.getParameter("star");
		String content = request.getParameter("content");
		int placeNo = Integer.parseInt(request.getParameter("no"));
		String id = request.getParameter("id");
		
		System.out.println(star);
		System.out.println(content);
		
		PlaceEval pe = new PlaceEval();
		
		pe.setStarPoint(star);
		pe.setContent(content);
		pe.setId(id);
		pe.setPlaceNo(placeNo);
		pe.setRegDate(new Date());
		
		PlaceEvalMapper mapper = 
					MyAppSqlConfig.getSqlSessionInstance().getMapper(PlaceEvalMapper.class);
		
		mapper.insertReview(pe);
		
		response.sendRedirect("/3jo_jariyo/placeeval/insertform.j?no="+placeNo);
		
	}

	
	
} // end class
