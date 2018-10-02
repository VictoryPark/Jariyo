package com.jariyo.teammatching.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.TeamMatching;
import com.jariyo.repository.mapper.TeamMatchingMapper;

@WebServlet("/teammatching/modifyForm.do")
public class ModifyFormTeamMatchingController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TeamMatchingMapper mapper =
				MyAppSqlConfig.getSqlSessionInstance().getMapper(TeamMatchingMapper.class);
		TeamMatching board = mapper.selectTeamMatchingByNo(Integer.parseInt(request.getParameter("boardNo")));
		request.setAttribute("board", board);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/teammatching/teammatchingModify.jsp");
		rd.forward(request, response);
	}

}
