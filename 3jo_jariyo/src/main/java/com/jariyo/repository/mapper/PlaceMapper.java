package com.jariyo.repository.mapper;

import java.util.List;

import com.jariyo.repository.domain.Place;

public interface PlaceMapper {

	List<Place> PlaceList();
	public Place selectInfoByNo(int placeNo);
	
} //end interface
