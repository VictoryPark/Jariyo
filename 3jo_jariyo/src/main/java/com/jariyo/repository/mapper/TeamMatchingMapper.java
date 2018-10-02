package com.jariyo.repository.mapper;

import java.util.List;

import com.jariyo.repository.domain.TeamMatching;

public interface TeamMatchingMapper {
	
	List<TeamMatching> selectTeamMatching();
	void insertTeamMatching(TeamMatching board);
	TeamMatching selectTeamMatchingByNo(int no);
	void deleteTeamMatching(int no);
	int modifyTeamMatching(TeamMatching board);
}
