package com.jariyo.repository.domain;

import java.sql.Date;

public class ManGather {
	private int boardNo;
	private String writerId;
	private String title;
	private String kindofGame;
	private String playDate;
	private String area;
	private String content;
	private String teamName;
	private String aveAge;
	private String placeAddr;
	private Date regDate;
	private String complete;
	
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getKindofGame() {
		return kindofGame;
	}
	public void setKindofGame(String kindofGame) {
		this.kindofGame = kindofGame;
	}

	public String getArea() {
		return area;
	}
	public String getPlayDate() {
		return playDate;
	}
	public void setPlayDate(String playDate) {
		this.playDate = playDate;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public String getAveAge() {
		return aveAge;
	}
	public void setAveAge(String aveAge) {
		this.aveAge = aveAge;
	}
	public String getPlaceAddr() {
		return placeAddr;
	}
	public void setPlaceAddr(String placeAddr) {
		this.placeAddr = placeAddr;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getComplete() {
		return complete;
	}
	public void setComplete(String complete) {
		this.complete = complete;
	}
	@Override
	public String toString() {
		return "ManGather [boardNo=" + boardNo + ", writerId=" + writerId + ", title=" + title + ", kindofGame="
				+ kindofGame + ", playDate=" + playDate + ", area=" + area + ", content=" + content + ", teamName="
				+ teamName + ", aveAge=" + aveAge + ", placeAddr=" + placeAddr + ", regDate=" + regDate + ", complete="
				+ complete + "]";
	}
	
}
