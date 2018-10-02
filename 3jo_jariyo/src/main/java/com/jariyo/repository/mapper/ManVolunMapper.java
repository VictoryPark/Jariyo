package com.jariyo.repository.mapper;

import java.util.List;

import com.jariyo.repository.domain.ManVolun;

public interface ManVolunMapper {

	List<ManVolun> selectManVolun();
	void insertManVolun(ManVolun board);
	ManVolun selectManVolunByNo(int no);
	void deleteManVolun(int no);
	int modifyManVolun(ManVolun board);
	
}
