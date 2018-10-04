package com.jariyo.repository.domain;

import java.sql.Date;

public class TeamMatching {
	private int boardNo;
	private String teamName;
	private String title;
	private String kindofGame;
	private String playDate;
	private String area;
	private String content;
	private String aveAge;
	private String placeName;
	private Date regDate;
	private String writerName;
	
	
	
	public String getWriterName() {
		return writerName;
	}
	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
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
	public String getPlayDate() {
		return playDate;
	}
	public void setPlayDate(String playDate) {
		this.playDate = playDate;
	}
	public String getArea() {
		return area;
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
	public String getAveAge() {
		return aveAge;
	}
	public void setAveAge(String aveAge) {
		this.aveAge = aveAge;
	}
	public String getPlaceName() {
		return placeName;
	}
	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	
}
