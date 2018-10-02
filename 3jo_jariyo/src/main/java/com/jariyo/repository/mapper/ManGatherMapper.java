package com.jariyo.repository.mapper;

import java.util.List;

import com.jariyo.repository.domain.ManGather;

public interface ManGatherMapper {

	List<ManGather> selectManGather();
	void insertManGather(ManGather board);
	ManGather selectManGatherByNo(int no);
	void deleteManGather(int no);
	int modifyManGather(ManGather board);
}
