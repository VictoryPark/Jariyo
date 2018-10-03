package com.jariyo.msg.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.Msg;
import com.jariyo.repository.mapper.MsgMapper;

@WebServlet("/msg/remsglist.do")
public class ReMsgListController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		MsgMapper mm = MyAppSqlConfig.getSqlSessionInstance().getMapper(MsgMapper.class);
		
	List<Msg> list =mm.selectReMsg();
	
	System.out.println(list.size());
	
	request.setAttribute("list", list);
	System.out.println(list);
	RequestDispatcher rd = request.getRequestDispatcher(
			"/jsp/msg/remsglist.jsp"
			);
	rd.forward(request, response);
		
		
	}

	
	
	

}
