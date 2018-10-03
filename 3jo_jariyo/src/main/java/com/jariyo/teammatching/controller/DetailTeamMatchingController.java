package com.jariyo.teammatching.controller;

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
import com.jariyo.repository.domain.MatchingComment;
import com.jariyo.repository.domain.Member;
import com.jariyo.repository.domain.TeamMatching;
import com.jariyo.repository.mapper.TeamMatchingMapper;

@WebServlet("/teammatching/detail.j")
public class DetailTeamMatchingController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		TeamMatchingMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(TeamMatchingMapper.class);
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		
		TeamMatching board = mapper.selectTeamMatchingByNo(boardNo);
	
		request.setAttribute("board", board);
		
		// id 가져오자 
		HttpSession session = request.getSession();
		Member mem = (Member)session.getAttribute("user");
		
		String id = mem.getId();
//		System.out.println();
		request.setAttribute("mcmtId", id);
		
		//
		
		
		// 댓글보기
		List<MatchingComment> commentList = mapper.selectMatchingCommentByNo(boardNo);
		request.setAttribute("commentList", commentList);
		
		try {
			request.setAttribute(
					"commentNo", Integer.parseInt(
							request.getParameter("commentNo")));	
		} catch (NumberFormatException e) { }
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/teammatching/teammatchingDetail.jsp");
		rd.forward(request, response);
	}

}
