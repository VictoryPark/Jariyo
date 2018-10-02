package com.jariyo.repository.domain;

public class Member {
	private int no;
	private String id;
	private String name;
	private String email;
	private String password;
	private String phoneNo;
	private String roadAddr;
	private String detailAddr;
	private String postNo;
	private double positionX;
	private double positionY;
	private String birthDate;
	private String teamName;
	private String profileImgPath;
	private String profileImgName;
	private String logOn;
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getRoadAddr() {
		return roadAddr;
	}
	public void setRoadAddr(String roadAddr) {
		this.roadAddr = roadAddr;
	}
	public String getDetailAddr() {
		return detailAddr;
	}
	public void setDetailAddr(String detailAddr) {
		this.detailAddr = detailAddr;
	}
	public String getPostNo() {
		return postNo;
	}
	public void setPostNo(String postNo) {
		this.postNo = postNo;
	}
	public double getPositionX() {
		return positionX;
	}
	public void setPositionX(double positionX) {
		this.positionX = positionX;
	}
	public double getPositionY() {
		return positionY;
	}
	public void setPositionY(double positionY) {
		this.positionY = positionY;
	}
	public String getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public String getProfileImgPath() {
		return profileImgPath;
	}
	public void setProfileImgPath(String profileImgPath) {
		this.profileImgPath = profileImgPath;
	}
	public String getProfileImgName() {
		return profileImgName;
	}
	public void setProfileImgName(String profileImgName) {
		this.profileImgName = profileImgName;
	}
	public String getLogOn() {
		return logOn;
	}
	public void setLogOn(String logOn) {
		this.logOn = logOn;
	}
	@Override
	public String toString() {
		return "Member [no=" + no + ", id=" + id + ", name=" + name + ", email=" + email + ", password=" + password
				+ ", phoneNo=" + phoneNo + ", roadAddr=" + roadAddr + ", detailAddr=" + detailAddr + ", postNo="
				+ postNo + ", positionX=" + positionX + ", positionY=" + positionY + ", birthDate=" + birthDate
				+ ", teamName=" + teamName + ", profileImgPath=" + profileImgPath
				+ ", profileImgName=" + profileImgName + "]";
	}
	
	
}
