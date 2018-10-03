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
import javax.servlet.http.HttpSession;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.Booking;
import com.jariyo.repository.domain.ManGather;
import com.jariyo.repository.domain.ManVolun;
import com.jariyo.repository.domain.Member;
import com.jariyo.repository.domain.PlaceEval;
import com.jariyo.repository.domain.TeamMatching;
import com.jariyo.repository.mapper.MyPageMapper;

@WebServlet("/mypage.j")
public class MyPage extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		MyPageMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(MyPageMapper.class);
		
		HttpSession session = request.getSession();
		Member mem = (Member)session.getAttribute("user");
		String id = mem.getId();
		String name = mem.getName();
		
		List<TeamMatching> matchList = mapper.selectMyTeamMatching(id);
		request.setAttribute("matchList", matchList);
		
		List<ManGather> gatherList = mapper.selectMyManGather(id);
		request.setAttribute("gatherList", gatherList);
		
		List<ManVolun> volunList = mapper.selectMyManVolun(name);
		request.setAttribute("volunList", volunList);
		
		List<Booking> bookingList = mapper.selectMyBooking(id);
		List<Integer> plnolist = new ArrayList<>();
		List<String> plnamelist = new ArrayList<>();
		
		for(Booking b : bookingList) {
			plnolist.add(b.getPlaceNo());
		}
		for (int no : plnolist) {
			plnamelist.add(mapper.selectPlaceName(no));
		}
		
		request.setAttribute("bookingList", bookingList);
		request.setAttribute("plnamelist", plnamelist);
		
		List<PlaceEval> evalList = mapper.selectMyPlaceEval(id);
		List<Integer> penolist = new ArrayList<>();
		List<String> peNameList = new ArrayList<>();
		System.out.println(evalList);
		for (PlaceEval e : evalList) {
			penolist.add(e.getPlaceNo());
		}
		for (int no : penolist) {
			peNameList.add(mapper.selectPlaceName(no));
		}
		request.setAttribute("evalList", evalList);
		request.setAttribute("peNameList", peNameList);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/mypage/myPage.jsp");
		rd.forward(request, response);
	}

}
