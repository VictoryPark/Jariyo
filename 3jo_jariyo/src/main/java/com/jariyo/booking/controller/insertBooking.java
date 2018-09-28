package com.jariyo.booking.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.Booking;
import com.jariyo.repository.mapper.BookingMapper;

@WebServlet("/booking/insert.do")
public class insertBooking extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String teamName = request.getParameter("teamname");
		String email = request.getParameter("email");
		String emailSend = request.getParameter("emailsend");
		String tel = request.getParameter("tel");
		
		System.out.println(teamName);
		System.out.println(email);
		System.out.println(emailSend);
		System.out.println(tel);
		
		Booking b = new Booking();
		
		b.setBookingDate("20180203");
		b.setBookingTeamName(teamName);
		b.setBookingEmail(email);
		b.setMailSend(emailSend);
		b.setBookingPhoneNo(tel);
		b.setId("victory");
		b.setPlaceNo(189);
		b.setStartTime("0900");
		b.setEndTime("1300");
		
		BookingMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(BookingMapper.class);
		
		mapper.insertBooking(b);
		
		response.sendRedirect("/3jo_jariyo/booking/showbooking.do");
		
	}

	
	
} // end class
