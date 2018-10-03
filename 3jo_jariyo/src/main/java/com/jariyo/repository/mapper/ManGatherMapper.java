package com.jariyo.repository.mapper;

import java.util.List;

import com.jariyo.repository.domain.ManGather;
import com.jariyo.repository.domain.ManGatherComment;

public interface ManGatherMapper {

	List<ManGather> selectManGather();
	void insertManGather(ManGather board);
	ManGather selectManGatherByNo(int no);
	void deleteManGather(int no);
	int modifyManGather(ManGather board);
	
	void insertGatherComment(ManGatherComment comment);
	List<ManGatherComment> selectGatherCommentByNo(int findNo);
	void deleteGatherComment(int commentNo);
	void updateGatherComment(ManGatherComment comment);
	
}
