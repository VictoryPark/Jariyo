package com.jariyo.booking.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.Booking;
import com.jariyo.repository.mapper.BookingMapper;

@WebServlet("/booking/insert.do")
public class InsertBooking extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		int placeNo = Integer.parseInt(request.getParameter("plno"));
		String teamName = request.getParameter("teamname");
		String email = request.getParameter("email");
		String emailSend = request.getParameter("emailsend");
		String tel = request.getParameter("tel");
		String date = request.getParameter("date");
		String st = request.getParameter("starttime");
		String et = request.getParameter("endtime");
		
		String year = date.substring(0, 4);
		//System.out.println(year);
		String month = date.substring(5, 7);
		//System.out.println(month);
		String day = date.substring(8, 10);
		//System.out.println(day);
		//System.out.println(st);
		String hour1 = st.substring(0, 2);
		String min1 = st.substring(3, 5);
		
		String hour2 = et.substring(0, 2);
		String min2 = et.substring(3, 5);
		
		Booking b = new Booking();
		
//		b.setBookingDate(year+month+day);
//		b.setBookingTeamName(teamName);
//		b.setBookingEmail(email);
//		b.setMailSend(emailSend);
//		b.setBookingPhoneNo(tel);
//		b.setId("victory");
//		b.setPlaceNo(placeNo);
//		b.setStartTime(hour1+min1);
//		b.setEndTime(hour2+min2);
//		
//		BookingMapper mapper = 
//				MyAppSqlConfig.getSqlSessionInstance().getMapper(BookingMapper.class);
//		
//		mapper.insertBooking(b);
//		
//		response.sendRedirect("/3jo_jariyo/booking/main.do?"+placeNo);
//		
	}

	
	
} // end class
