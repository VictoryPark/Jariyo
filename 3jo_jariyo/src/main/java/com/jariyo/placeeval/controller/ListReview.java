package com.jariyo.placeeval.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

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

@WebServlet("/placeeval/list.do")
public class ListReview extends HttpServlet{

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int placeNo = Integer.parseInt(request.getParameter("no"));
		//PlaceEval pe = (PlaceEval) request.getAttribute("review");
		
		
		PlaceEvalMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(PlaceEvalMapper.class);
		
		List<PlaceEval> list = mapper.selectAllbyPlaceNo(placeNo);
		
//		for(PlaceEval pe : list) {
//			System.out.println(pe.getEvalNo());
//		}
		if(list!=null) {		
//			request.setAttribute("rList", list);
//			request.setAttribute("review", pe);
			response.setContentType("application/json; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println(new Gson().toJson(list));
			//System.out.println(list);
			out.close();
			
//			RequestDispatcher rd = request.getRequestDispatcher("/jsp/placeeval/review2.jsp");
//			rd.forward(request, response);
		}
		
	}

} //end class
