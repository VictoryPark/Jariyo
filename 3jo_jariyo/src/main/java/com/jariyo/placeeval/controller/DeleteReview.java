package com.jariyo.placeeval.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.WebServiceClient;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.mapper.PlaceEvalMapper;

@WebServlet("/placeeval/delete.do")
public class DeleteReview extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int evalNo = Integer.parseInt(request.getParameter("revno"));
		
		PlaceEvalMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(PlaceEvalMapper.class);
		
		mapper.deleteReview(evalNo);
		
		
	}

	
	
}
