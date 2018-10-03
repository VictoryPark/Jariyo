package com.jariyo.booking.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.repository.domain.Place;
import com.jariyo.repository.mapper.PlaceMapper;

@WebServlet("/booking/calcul.j")
public class CalculFare extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int placeNo = Integer.parseInt(request.getParameter("plno"));
		//System.out.println(placeNo);
		String st = request.getParameter("st");
		String et = request.getParameter("et");
		String hour1 = st.substring(0, 2);
		String hour2 = et.substring(0, 2);
		
		int stH = Integer.parseInt(hour1);
		int etH = Integer.parseInt(hour2);
		
		PlaceMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(PlaceMapper.class);
		
		Place place = mapper.selectInfoByNo(placeNo);
		
		int price = place.getPrice();
		String totalFare = String.valueOf(price);
		
		if(price!=0) {
			int fare = price * (etH - stH);
			String fString = String.valueOf(fare);
			totalFare =fString.substring(0, fString.length()-3)
									 .concat(",")
									 .concat(fString.substring(fString.length()-3,fString.length()));
									 
			//System.out.println(totalFare);
		}
		String fee = totalFare.concat("원");
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(new Gson().toJson(fee));
		out.close();
		//System.out.println("priceSTring :"+priceString);
	}
	
	

} //end class
