package com.jariyo.repository.mapper;

import java.util.List;

import com.jariyo.repository.domain.PlaceEval;

public interface PlaceEvalMapper {

	public void insertReview(PlaceEval pe);
	
	public void updateReview(PlaceEval pe);
	
	public void deleteReview(int evalNo);
	
	public List<PlaceEval> selectAllbyPlaceNo(int placeNo);
	
	public PlaceEval selectOneReview(int evalNo);
	
} //end interface
