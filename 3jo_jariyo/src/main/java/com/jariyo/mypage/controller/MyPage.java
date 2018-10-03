package com.jariyo.mypage.controller;

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
import com.jariyo.repository.domain.ManGather;
import com.jariyo.repository.domain.ManVolun;
import com.jariyo.repository.domain.Member;
import com.jariyo.repository.domain.TeamMatching;
import com.jariyo.repository.mapper.MyPageMapper;

@WebServlet("/mypage")
public class MyPage extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		MyPageMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(MyPageMapper.class);
		
		HttpSession session = request.getSession();
		Member mem = (Member)session.getAttribute("user");
		String id = mem.getId();
		
		List<TeamMatching> matchList = mapper.selectMyTeamMatching(id);
		request.setAttribute("matchList", matchList);
		
		List<ManGather> gatherList = mapper.selectMyManGather(id);
		request.setAttribute("gatherList", gatherList);
		
		List<ManVolun> volunList = mapper.selectMyManVolun(id);
		request.setAttribute("volunList", volunList);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/mypage/myPage.jsp");
		rd.forward(request, response);
	}

}
