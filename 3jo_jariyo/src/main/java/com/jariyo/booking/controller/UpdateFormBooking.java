package com.jariyo.booking.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.Booking;
import com.jariyo.repository.mapper.BookingMapper;

@WebServlet("/booking/updateform.j")
public class UpdateFormBooking extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int bookingNo = Integer.parseInt(request.getParameter("bno"));
		
		BookingMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(BookingMapper.class);
		
		
		Booking b = mapper.selectOnebyNo(bookingNo);
		
//		System.out.println(b);
//		Date st = new Date();
//		Date et = new Date();
//		
//		try {
//			st = new SimpleDateFormat("HHmm").parse(b.getStartTime());
//			et = new SimpleDateFormat("HHmm").parse(b.getEndTime());
//		} catch (ParseException e) {
//			e.printStackTrace();
//		}
		
		if(!b.getStartTime().contains(":") && 
				!b.getEndTime().contains(":")) 	{
			
			b.setStartTime(b.getStartTime().substring(0, 2).concat(":")
					.concat(b.getStartTime().substring(2, 4)));
			b.setEndTime(b.getEndTime().substring(0, 2).concat(":")
					.concat(b.getEndTime().substring(2, 4)));
		}
//		
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		out.println(gson.toJson(b));
//		out.println(gson.toJson(st));
//		out.println(gson.toJson(et));
		out.close();
	}

	
	
} //end class
