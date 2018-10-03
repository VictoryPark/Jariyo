package com.jariyo.manvolun.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.ManVolun;
import com.jariyo.repository.domain.Member;
import com.jariyo.repository.mapper.ManVolunMapper;

@WebServlet("/manvolun/list.j")
public class ListManVolunController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		ManVolunMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(ManVolunMapper.class);
		
		// id 호출
//		HttpSession session = request.getSession();
//		Member mem = (Member)session.getAttribute("user");
//		
//		
//		
//		String name = mem.getName();
//		
//		request.setAttribute("mName", name);
//		//
//		
		List<ManVolun> list = mapper.selectManVolun();

		request.setAttribute("list", list);
		
		RequestDispatcher rd = request.getRequestDispatcher(
				"/jsp/manvolun/manVolunBoard.jsp"
				);
		rd.forward(request, response);
	}

}
