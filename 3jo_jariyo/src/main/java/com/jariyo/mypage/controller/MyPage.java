package com.jariyo.mypage.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.TestBooking;
import com.jariyo.repository.domain.TestPlace;
import com.jariyo.repository.mapper.MyPageMapper;

@WebServlet("/mypage")
public class MyPage extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MyPageMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(MyPageMapper.class);
		
		String id = request.getParameter("id");
		List<TestBooking> bList = mapper.selectMyBooking(id);
		
		request.setAttribute("bList", bList);
		
		List<String> list = new ArrayList<>();
		for (TestBooking tb : bList) {
			list.add(mapper.selectPlaceName(tb.getPlaceNo()));
		}
		request.setAttribute("list", list);
		System.out.println(list.toString());
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/mypage/myPage.jsp");
		rd.forward(request, response);
	}

}
