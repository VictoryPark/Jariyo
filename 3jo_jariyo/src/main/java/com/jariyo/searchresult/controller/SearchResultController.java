package com.jariyo.searchresult.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
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
import com.jariyo.repository.domain.Place;
import com.jariyo.repository.mapper.SearchResultMapper;




@WebServlet("/jariyo/searchresult.j")
public class SearchResultController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
//		String startDate = request.getParameter("startdate");
//	 	String endDate = request.getParameter("enddate");
		String searchWord = request.getParameter("searchword");
		
		// 서블릿에서 세션 얻어오기(서버에서 만들어진것을 가져오는것)
		HttpSession session = request.getSession();
		Member user = (Member)session.getAttribute("user");
		double mx = user.getPositionX();
		double my = user.getPositionY();
//		double mx = 127.0843802;
//		double my = 37.5569892;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mx", mx);
		map.put("my", my);
		
		
		SearchResultMapper srmapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(SearchResultMapper.class);
	 	
	 	List<Place> placechargelist = srmapper.PlaceList();
	 	List<Place> chargelistresult = new ArrayList<>();
	 	
	 	for (Place place : placechargelist) {
			if ((place.getPlaceName().contains(searchWord)==true) || (place.getPlaceRoadAddr().contains(searchWord)==true)) 
			{
				chargelistresult.add(place);
			}
		}
	 	
	 	List<Place> placePointlist = srmapper.PlaceListByPoint();

	 	List<Place> placedistancelist = srmapper.PlaceListByDistance(map);
	 	List<Place> distancelistresult = new ArrayList<>();

	 	for (Place place2 : placedistancelist) {
	 		if ((place2.getPlaceName().contains(searchWord)==true) || (place2.getPlaceRoadAddr().contains(searchWord)==true)) 
			{
	 			distancelistresult.add(place2);
			}
		}
	 	
	 	System.out.println(mx);
	 	System.out.println(my);
	 	
	 	request.setAttribute("chargelistresult", chargelistresult);
	 	request.setAttribute("placePointlist", placePointlist);
	 	request.setAttribute("distancelistresult", distancelistresult);
	 	 	
	 	RequestDispatcher rd = request.getRequestDispatcher("/jsp/searchresult/defaultsearch.jsp");
	 	rd.forward(request, response);
	 	
	}

}
