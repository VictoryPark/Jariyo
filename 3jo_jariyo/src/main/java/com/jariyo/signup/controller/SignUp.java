package com.jariyo.signup.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.Member;
import com.jariyo.repository.mapper.SignupMapper;

@WebServlet("/signup")
public class SignUp extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String phoneNo = request.getParameter("phoneNo");
		String postNo = request.getParameter("postNo");
		String roadAddr = request.getParameter("roadAddr");
		String detailAddr = request.getParameter("detailAddr");
		String birthDate = request.getParameter("birthYear");
		birthDate += request.getParameter("birthMonth"); 
		birthDate += request.getParameter("birthDay");
		
		SignupMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(SignupMapper.class);
		
		Member member = new Member();
		member.setId(id);
		member.setName(name);
		member.setEmail(email);
		member.setPassword(password);
		member.setPhoneNo(phoneNo);
		member.setPostNo(postNo);
		member.setRoadAddr(roadAddr);
		member.setDetailAddr(detailAddr);
		member.setBirthDate(birthDate);
		
		mapper.insertMember(member);
		
		response.sendRedirect(request.getContextPath() + "/login-form");
	}

}
