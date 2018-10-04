package com.jariyo.repository.mapper;

import java.util.List;

import com.jariyo.repository.domain.Booking;
import com.jariyo.repository.domain.ManGather;
import com.jariyo.repository.domain.ManVolun;
import com.jariyo.repository.domain.Member;
import com.jariyo.repository.domain.PlaceEval;
import com.jariyo.repository.domain.TeamMatching;

public interface MyPageMapper {
	void updateMyInfo(Member member);
	List<TeamMatching> selectMyTeamMatching(String name);
	List<ManGather> selectMyManGather(String name);
	List<ManVolun> selectMyManVolun(String name);
	List<Booking> selectMyBooking(String id);
	String selectPlaceName(int no);
	List<PlaceEval> selectMyPlaceEval(String id);
} 
