package com.jariyo.repository.mapper;

import com.jariyo.repository.domain.Member;

public interface LoginMapper {
	Member selectMemberInfo(Member member);
	void updateLogonToIn(String id);
	void updateLogonToOut();
	String selectLogon();
} // end interface
