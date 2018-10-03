package com.jariyo.signup.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.mapper.SignupMapper;

@WebServlet("/signup-form.j")
public class SignUpForm extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		SignupMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(SignupMapper.class);
		
		List<String> idList = mapper.selectCheckId();
		request.setAttribute("idList", idList);
		
		List<String> emailList = mapper.selectCheckEmail();
		request.setAttribute("emailList", emailList);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/signup/signUpForm.jsp");
		rd.forward(request, response);
	}

}
