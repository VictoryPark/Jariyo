package com.jariyo.repository.mapper;

import java.util.List;

import com.jariyo.repository.domain.Msg;

public interface MsgMapper {
	List<Msg> selectReMsg();
	List<Msg> selectSeMsg();
	Msg selectMsgByNo(int no);
	int deleteMsg(int no);
	int sendMsg(int no);
	void reciveMsg(int no);
	void insertMsg(Msg msg);
	List<Msg> selectdelMsg();
	
}
