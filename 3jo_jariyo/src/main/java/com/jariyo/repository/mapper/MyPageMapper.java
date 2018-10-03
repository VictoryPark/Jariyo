package com.jariyo.repository.mapper;

import java.util.List;

import com.jariyo.repository.domain.ManGather;
import com.jariyo.repository.domain.ManVolun;
import com.jariyo.repository.domain.Member;
import com.jariyo.repository.domain.TeamMatching;

public interface MyPageMapper {
	void updateMyInfo(Member member);
	List<TeamMatching> selectMyTeamMatching(String id);
	List<ManGather> selectMyManGather(String id);
	List<ManVolun> selectMyManVolun(String id);
}
