package com.jariyo.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.Member;
import com.jariyo.repository.mapper.MyPageMapper;

@WebServlet("/myinfo")
public class MyInfo extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String phoneNo = request.getParameter("phoneNo");
		String postNo = request.getParameter("postNo");
		String roadAddr = request.getParameter("roadAddr");
		String detailAddr = request.getParameter("detailAddr");
		String birthDate = request.getParameter("birthYear");
		birthDate += request.getParameter("birthMonth"); 
		birthDate += request.getParameter("birthDay");
		String hobby = request.getParameter("hobby");
		String teamName = request.getParameter("teamName");
		String profileImgReal = request.getParameter("profileImgReal");
		String profileImgSys = request.getParameter("profileImgSys");
		
		MyPageMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(MyPageMapper.class);
		
		Member member = new Member();
		member.setName(name);
		member.setPassword(password);
		member.setPhoneNo(phoneNo);
		member.setPostNo(postNo);
		member.setRoadAddr(roadAddr);
		member.setDetailAddr(detailAddr);
		member.setBirthDate(birthDate);
		member.setHobby(hobby);
		member.setTeamName(teamName);
		member.setProfileImgReal(profileImgReal);
		member.setProfileImgSys(profileImgSys);
		
		mapper.updateMyInfo(member);
		
		response.sendRedirect(request.getContextPath() + "/mypage-form");
		
	}

}
