package com.jariyo.repository.domain;

public class Booking {

	
	private int bookingNo;
	private int placeNo;
	private String id;
	private String bookingTeamName;
	private String bookingEmail;
	private String bookingPhoneNo;
	private String bookingDate;
	private String startTime;
	private String endTime;
	private String mailSend;
	
	
	public int getBookingNo() {
		return bookingNo;
	}
	public void setBookingNo(int bookingNo) {
		this.bookingNo = bookingNo;
	}
	public int getPlaceNo() {
		return placeNo;
	}
	public void setPlaceNo(int placeNo) {
		this.placeNo = placeNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBookingTeamName() {
		return bookingTeamName;
	}
	public void setBookingTeamName(String bookingTeamName) {
		this.bookingTeamName = bookingTeamName;
	}
	public String getBookingEmail() {
		return bookingEmail;
	}
	public void setBookingEmail(String bookingEmail) {
		this.bookingEmail = bookingEmail;
	}
	public String getBookingPhoneNo() {
		return bookingPhoneNo;
	}
	public void setBookingPhoneNo(String bookingPhoneNo) {
		this.bookingPhoneNo = bookingPhoneNo;
	}
	public String getBookingDate() {
		return bookingDate;
	}
	public void setBookingDate(String bookingDate) {
		this.bookingDate = bookingDate;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getMailSend() {
		return mailSend;
	}
	public void setMailSend(String mailSend) {
		this.mailSend = mailSend;
	}
	
	
	@Override
	public String toString() {
		return "Booking [bookingNo=" + bookingNo + ", placeNo=" + placeNo + ", id=" + id + ", bookingTeamName="
				+ bookingTeamName + ", bookingEmail=" + bookingEmail + ", bookingPhoneNo=" + bookingPhoneNo
				+ ", bookingDate=" + bookingDate + ", startTime=" + startTime + ", endTime=" + endTime + ", mailSend="
				+ mailSend + "]";
	}
	
	
	
	
} //end class
