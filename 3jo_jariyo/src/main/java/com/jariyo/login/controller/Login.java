package com.jariyo.login.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.Member;
import com.jariyo.repository.mapper.LoginMapper;

@WebServlet("/login.j")
public class Login extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		
	
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		LoginMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(LoginMapper.class);
		
		Member member = new Member();
		
		member.setEmail(email);
		member.setPassword(password);
		
		Member login = mapper.selectMemberInfo(member);
		mapper.updateLogonToIn(email);
		if (login == null) {
			response.sendRedirect(request.getContextPath() + "/login-form");
			return;
		} // if

		HttpSession session = request.getSession();
		session.setAttribute("user", login);
		
		response.sendRedirect(request.getContextPath() + "/jariyo/main.j");
	}

}
