package com.jariyo.repository.domain;

import java.util.Date;

public class Msg {
	private	int	msgNo;
	
	private int no;
	private String fromName;
	private String toName;
	private String title;
	private String content;
	private int trash;
	private Date regDate;
	private char kind;
	private int msgFromTo;
	
	
	public int getMsgFromTo() {
		return msgFromTo;
	}
	public void setMsgFromTo(int msgFromTo) {
		this.msgFromTo = msgFromTo;
	}
	public int getMsgNo() {
		return msgNo;
	}
	public void setMsgNo(int msgNo) {
		this.msgNo = msgNo;
	}
	
	

	public char getKind() {
		return kind;
	}
	public void setKind(char kind) {
		this.kind = kind;
	}

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getFromName() {
		return fromName;
	}
	public void setFromName(String fromName) {
		this.fromName = fromName;
	}
	public String getToName() {
		return toName;
	}
	public void setToName(String toName) {
		this.toName = toName;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getTrash() {
		return trash;
	}
	public void setTrash(int trash) {
		this.trash = trash;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

		
	


	
	
	
	
}
