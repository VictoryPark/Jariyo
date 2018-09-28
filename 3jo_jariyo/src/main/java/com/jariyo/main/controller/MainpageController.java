package com.jariyo.main.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.ManGather;
import com.jariyo.repository.domain.ManVolun;
import com.jariyo.repository.domain.Place;
import com.jariyo.repository.domain.TeamMatching;
import com.jariyo.repository.mapper.ManGatherMapper;
import com.jariyo.repository.mapper.ManVolunMapper;
import com.jariyo.repository.mapper.PlaceMapper;
import com.jariyo.repository.mapper.TeamMatchingMapper;

@WebServlet("/board/main.do")
public class MainpageController extends HttpServlet {
	
	

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//용병신청 테이블
		ManVolunMapper manVmapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(ManVolunMapper.class);
		// 데이터베이스 게시물 목록 가져오기
		List<ManVolun> manvolunlist =  manVmapper.selectBoard();
		
		// 준비된 데이터를 공유
		request.setAttribute("manvolunlist", manvolunlist);
		
		//용병모집 테이블
		ManGatherMapper manGmapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(ManGatherMapper.class);
		// 데이터베이스 게시물 목록 가져오기
		List<ManGather> mangatlist =  manGmapper.selectBoard();
		
		// 준비된 데이터를 공유
		request.setAttribute("mangatherlist", mangatlist);
		
		//팀구해요 테이블
		TeamMatchingMapper teamMapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(TeamMatchingMapper.class);
		// 데이터베이스 게시물 목록 가져오기
		List<TeamMatching> teamlist =  teamMapper.selectBoard();
		
		// 준비된 데이터를 공유
		request.setAttribute("teamlist", teamlist);
		
		// 시설정보 테이블 접근
		PlaceMapper placeMapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(PlaceMapper.class);
		// 게시물 목록 가져오기
		List<Place> placelist = placeMapper.selectBoard();
		// 준비된 데이터를 공유
		request.setAttribute("placelist", placelist);
		
		//대회정보 테이블 접근
		// 데이터베이스 게시물 목록 가져오기
		// 준비된 데이터를 공유
		
		// 공유가 되었다면 페이지를 이동
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/main/mainpage.jsp");
		rd.forward(request, response);
		
		
		
	}
	
	
}
