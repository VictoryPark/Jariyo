package com.jariyo.msg.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.Msg;
import com.jariyo.repository.mapper.MsgMapper;

@WebServlet("/msg/writemsg.j")
public class WriteMsgController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		MsgMapper mm= MyAppSqlConfig.getSqlSessionInstance().getMapper(MsgMapper.class);
		
		String title = request.getParameter("title");
		String toName = request.getParameter("toName");
		String content = request.getParameter("content");
		
		Msg msg =new Msg();
		
		msg.setTitle(request.getParameter(title));
		msg.setToName(request.getParameter(toName));
		msg.setContent(request.getParameter(content));		
		mm.insertMsg(msg);
		
		RequestDispatcher rd = request.getRequestDispatcher(
					"/msg/remsglist.j"
				);
		
		rd.forward(request,response);
	}

	
	
}
