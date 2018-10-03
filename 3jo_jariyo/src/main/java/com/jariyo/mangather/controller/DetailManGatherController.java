package com.jariyo.mangather.controller;

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
import com.jariyo.repository.domain.ManGatherComment;
import com.jariyo.repository.domain.Member;
import com.jariyo.repository.mapper.ManGatherMapper;

@WebServlet("/mangather/detail.j")
public class DetailManGatherController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		ManGatherMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(ManGatherMapper.class);
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		ManGather board = mapper.selectManGatherByNo(boardNo);
		
		request.setAttribute("board", board);
		
		// session id
		HttpSession session = request.getSession();
		Member mem = (Member)session.getAttribute("user");
		
		String id = mem.getId();
		request.setAttribute("gcmtId", id);
		
		//list comment
		List<ManGatherComment> commentList = mapper.selectGatherCommentByNo(boardNo);
		request.setAttribute("commentList", commentList);
		
		try {
			request.setAttribute(
					"commentNo", Integer.parseInt(
							request.getParameter("commentNo")));	
		} catch (NumberFormatException e) { }
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/mangather/manGatherDetail.jsp");
		rd.forward(request, response);
	}

}
