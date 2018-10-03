package com.jariyo.placeeval.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.PlaceEval;
import com.jariyo.repository.mapper.PlaceEvalMapper;

@WebServlet("/placeeval/update.j")
public class UpdateReview extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		int evalNo = Integer.parseInt(request.getParameter("revno"));
		String content = request.getParameter("content");
		String star = request.getParameter("star");
//		System.out.println(star);
		int placeNo = Integer.parseInt(request.getParameter("plno"));
		
		PlaceEvalMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(PlaceEvalMapper.class);

		if(star!=null){
			
			PlaceEval param = new PlaceEval();
			
			param.setEvalNo(evalNo);
			param.setContent(content);
			param.setStarPoint(star);
			param.setRegDate(new Date());
			
			mapper.updateReview(param);
		} 
			
		PlaceEval pe = mapper.selectOneReview(evalNo);
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(new Gson().toJson(pe));
		out.close();
	
		
		
		//response.sendRedirect("/3jo_jariyo/placeeval/list.do?no="+placeNo);
	}

	
	
} //end class
