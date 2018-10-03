package com.jariyo.repository.mapper;

import java.util.List;

import com.jariyo.repository.domain.ManVolun;
import com.jariyo.repository.domain.ManVolunComment;
import com.jariyo.repository.domain.MatchingComment;

public interface ManVolunMapper {

	List<ManVolun> selectManVolun();
	void insertManVolun(ManVolun board);
	ManVolun selectManVolunByNo(int no);
	void deleteManVolun(int no);
	int modifyManVolun(ManVolun board);
	
	void insertManVolunComment(ManVolunComment comment);
	List<ManVolunComment> selectManVolunCommentByNo(int findNo);
	void deleteManVolunComment(int commentNo);
	void updateManVolunComment(ManVolunComment comment);
	
}
