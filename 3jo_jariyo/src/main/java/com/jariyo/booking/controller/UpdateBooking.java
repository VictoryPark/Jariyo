package com.jariyo.booking.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.Booking;
import com.jariyo.repository.mapper.BookingMapper;

@WebServlet("/booking/update.j")
public class UpdateBooking extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Booking param = new Booking();
		
		int bookingNo = Integer.parseInt(request.getParameter("bno"));
		BookingMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(BookingMapper.class);
		
		if(request.getParameter("starttime")!="" && request.getParameter("endtime")!="") {
			String st = request.getParameter("starttime");
			String et = request.getParameter("endtime");
			System.out.println(st);
			System.out.println(et);
			
			String hour1 = st.substring(0, 2);
			String min1 = st.substring(3, 5);
			
			String hour2 = et.substring(0, 2);
			String min2 = et.substring(3, 5);
			param.setStartTime(hour1+min1);
			param.setEndTime(hour2+min2);
			
		} else {
			
			Booking boo = mapper.selectOnebyNo(bookingNo);
			param.setStartTime(boo.getStartTime());
			param.setEndTime(boo.getEndTime());
		}
		
		
		String teamName = request.getParameter("teamname");
		String phoneNo = request.getParameter("tel");
		
		
//		System.out.println(bookingNo);

//		System.out.println(teamName);
//		System.out.println(phoneNo);
		param.setBookingNo(bookingNo);
		param.setBookingTeamName(teamName);
		param.setBookingPhoneNo(phoneNo);
		
		
		mapper.updateBooking(param);
		
		Booking b = mapper.selectOnebyNo(bookingNo);
		
		if(!b.getBookingDate().contains("-") &&
				!b.getStartTime().contains(":") && 
				!b.getEndTime().contains(":")) 	{
			
			b.setBookingDate(b.getBookingDate().substring(0,4).concat("-")
					.concat(b.getBookingDate().substring(4, 6).concat("-"))
					.concat(b.getBookingDate().substring(6, 8)));
			b.setStartTime(b.getStartTime().substring(0, 2).concat(":")
					.concat(b.getStartTime().substring(2, 4)));
			b.setEndTime(b.getEndTime().substring(0, 2).concat(":")
					.concat(b.getEndTime().substring(2, 4)));
		}
		
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.println(new Gson().toJson(b));
		out.close();
	}
	
} //end class
