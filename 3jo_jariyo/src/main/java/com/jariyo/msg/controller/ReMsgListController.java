package com.jariyo.msg.controller;

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
import com.jariyo.repository.domain.Member;
import com.jariyo.repository.domain.Msg;
import com.jariyo.repository.mapper.MsgMapper;

@WebServlet("/msg/remsglist.j")
public class ReMsgListController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		MsgMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(MsgMapper.class);
		
		HttpSession session = request.getSession();
		Member mem = (Member)session.getAttribute("user");
		String id = mem.getId();
		List<Msg> list = mapper.selectReMsg(id);
		
		request.setAttribute("list", list);
		RequestDispatcher rd = request.getRequestDispatcher(
				"/jsp/msg/remsglist.jsp"
				);
		rd.forward(request, response);
		
		
	}

	
	
	

}
