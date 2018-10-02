package com.jariyo.placeeval.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.PlaceEval;
import com.jariyo.repository.mapper.PlaceEvalMapper;

@WebServlet("/placeeval/updateform.do")
public class UpdateFormReview extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int evalNo = Integer.parseInt(request.getParameter("revno"));
		int placeNo = Integer.parseInt(request.getParameter("plno"));
		
		PlaceEvalMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(PlaceEvalMapper.class);
		
		PlaceEval pe = mapper.selectOneReview(evalNo);
//		System.out.println(pe);
		//request.setAttribute("review", pe);
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(new Gson().toJson(pe));
		out.close();
		
//		RequestDispatcher rd = request.getRequestDispatcher("/placeeval/list.do?no="+placeNo);
//		rd.forward(request, response);
	}
	
	

}
