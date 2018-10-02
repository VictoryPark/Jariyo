package com.jariyo.repository.mapper;

import java.util.HashMap;
import java.util.List;

import com.jariyo.repository.domain.Place;


public interface SearchResultMapper {

	List<Place> PlaceList();
	List<Place> PlaceListByPoint();
	
	Place selectPlaceByNo(int no);
	
	List<Place> PlaceListByDistance(HashMap<String, Object> map);
	
}
