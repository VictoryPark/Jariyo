package com.jariyo.repository.mapper;

import java.util.List;

import com.jariyo.repository.domain.MatchingComment;
import com.jariyo.repository.domain.TeamMatching;

public interface TeamMatchingMapper {
	
	List<TeamMatching> selectTeamMatching();
	void insertTeamMatching(TeamMatching board);
	TeamMatching selectTeamMatchingByNo(int no);
	void deleteTeamMatching(int no);
	int modifyTeamMatching(TeamMatching board);
	
	void insertMatchingComment(MatchingComment comment);
	List<MatchingComment> selectMatchingCommentByNo(int findNo);
	void deleteMatchingComment(int commentNo);
	void updateMatchingComment(MatchingComment comment);
	
}
