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
import com.jariyo.repository.domain.ManVolunComment;
import com.jariyo.repository.domain.Member;
import com.jariyo.repository.mapper.ManVolunMapper;

@WebServlet("/manvolun/detail.j")
public class DetailManVolunController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		ManVolunMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(ManVolunMapper.class);
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		ManVolun board = mapper.selectManVolunByNo(boardNo);
		
		request.setAttribute("board", board);
		
		// id 가져오자 
		HttpSession session = request.getSession();
		Member mem = (Member)session.getAttribute("user");
		
		String id = mem.getId();
		request.setAttribute("vcmtId", id);
		//
		
		// 댓글보기
		List<ManVolunComment> commentList = mapper.selectManVolunCommentByNo(boardNo);
		request.setAttribute("commentList", commentList);
		
		try {
			request.setAttribute(
					"commentNo", Integer.parseInt(
							request.getParameter("commentNo")));	
		} catch (NumberFormatException e) { }
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/manvolun/manVolunDetail.jsp");
		rd.forward(request, response);
	}

}
