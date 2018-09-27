package com.jariyo.repository.mapper;

import com.jariyo.repository.domain.Member;

public interface LoginMapper {
	Member selectMemberInfo(Member member);
} // end interface
