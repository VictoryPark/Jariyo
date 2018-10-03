package com.jariyo.repository.mapper;

import java.util.List;

import com.jariyo.repository.domain.Booking;

public interface BookingMapper {

	public void insertBooking(Booking booking);
	
	public List<Booking> selectListByDateAndPlno(Booking b);
	
	public void deleteBooking(int bookingNo);
	
	public Booking selectOnebyNo(int bookingNo);
	
	public void updateBooking(Booking b);
	
}
