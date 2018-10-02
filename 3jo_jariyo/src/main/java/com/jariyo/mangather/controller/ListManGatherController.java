package com.jariyo.mangather.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.ManGather;
import com.jariyo.repository.mapper.ManGatherMapper;

@WebServlet("/mangather/list.do")
public class ListManGatherController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ManGatherMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(ManGatherMapper.class);
		
		List<ManGather> list = mapper.selectManGather();
		
		request.setAttribute("list", list);
		
		RequestDispatcher rd = request.getRequestDispatcher(
				"/jsp/mangather/manGatherBoard.jsp"
		);
		rd.forward(request, response);
	}
}
