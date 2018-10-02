package com.jariyo.manvolun.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.ManVolun;
import com.jariyo.repository.mapper.ManVolunMapper;

@WebServlet("/manvolun/list.do")
public class ListManVolunController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ManVolunMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(ManVolunMapper.class);
		
		List<ManVolun> list = mapper.selectManVolun();
		
		request.setAttribute("list", list);
		
		RequestDispatcher rd = request.getRequestDispatcher(
				"/jsp/manvolun/manVolunBoard.jsp"
				);
		rd.forward(request, response);
	}

}
