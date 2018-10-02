package com.jariyo.repository.domain;

import java.util.Date;

public class PlaceEval {

	int evalNo;
	String id;
	int placeNo;
	String content;
	Date regDate;
	String starPoint;
	
	
	public int getEvalNo() {
		return evalNo;
	}
	public void setEvalNo(int evalNo) {
		this.evalNo = evalNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPlaceNo() {
		return placeNo;
	}
	public void setPlaceNo(int placeNo) {
		this.placeNo = placeNo;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getStarPoint() {
		return starPoint;
	}
	public void setStarPoint(String starPoint) {
		this.starPoint = starPoint;
	}
	
	
	@Override
	public String toString() {
		return "PlaceEval [evalNo=" + evalNo + ", id=" + id + ", placeNo=" + placeNo + ", content=" + content
				+ ", regDate=" + regDate + ", starPoint=" + starPoint + "]";
	}
	
	
	
} //end class
