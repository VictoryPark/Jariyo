package com.jariyo.booking.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.Booking;
import com.jariyo.repository.mapper.BookingMapper;

@WebServlet("/booking/delete.j")
public class DeleteBooking extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int bookingNo = Integer.parseInt(request.getParameter("bno"));
		
		BookingMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(BookingMapper.class);
		
		Booking b = mapper.selectOnebyNo(bookingNo);
		
		Booking booking = new Booking();
		booking.setBookingDate(b.getBookingDate());
		booking.setPlaceNo(b.getPlaceNo());
		
		mapper.deleteBooking(bookingNo);
		
		List<Booking> list = mapper.selectListByDateAndPlno(booking);
		
		if(list!=null) {
			for(Booking bk : list) {
				if(!bk.getBookingDate().contains("-") && 
						!bk.getStartTime().contains(":")&& 
						!bk.getEndTime().contains(":")) {
					
					bk.setBookingDate(bk.getBookingDate().substring(0,4).concat("-")
							.concat(bk.getBookingDate().substring(4, 6).concat("-"))
							.concat(bk.getBookingDate().substring(6, 8)));
					bk.setStartTime(bk.getStartTime().substring(0, 2).concat(":")
							.concat(bk.getStartTime().substring(2, 4)));
					bk.setEndTime(bk.getEndTime().substring(0, 2).concat(":")
							.concat(bk.getEndTime().substring(2, 4)));
				} //if
				
			} //for
			response.setContentType("application/json; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println(new Gson().toJson(list));
			out.close();
		} //if
		
	}
} //end class
