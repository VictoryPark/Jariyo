package com.jariyo.repository.mapper;

import java.util.List;

import com.jariyo.repository.domain.Member;

public interface SignupMapper {
	void insertMember(Member member);
	List<String> selectCheckId(); 
	List<String> selectCheckEmail();
}
