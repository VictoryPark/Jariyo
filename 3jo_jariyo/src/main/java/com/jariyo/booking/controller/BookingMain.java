package com.jariyo.booking.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.Member;
import com.jariyo.repository.domain.Place;
import com.jariyo.repository.mapper.PlaceMapper;

@WebServlet("/booking/main.j")
public class BookingMain extends HttpServlet{

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int placeNo = Integer.parseInt(request.getParameter("no"));
		HttpSession session = request.getSession();
		Member mem = (Member) session.getAttribute("user");
		
		PlaceMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(PlaceMapper.class);
		
		Place place = mapper.selectInfoByNo(placeNo);
		String wds = place.getWeekdaysStart();
		String wde = place.getWeekdaysEnd();
//		System.out.println(place);
//		
//		System.out.println(wds.indexOf("."));
//		System.out.println(wds.substring(0, wds.indexOf(".")));
		
		request.setAttribute("wds", wds.substring(0, wds.indexOf(".")));
		request.setAttribute("wde", wde.substring(0, wde.indexOf(".")));
		request.setAttribute("place", place);
		request.setAttribute("user", mem);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/booking/booking.jsp");
		rd.forward(request, response);
	
	}
}
