package com.ict.market.main.dao;

import java.util.List;

import com.ict.market.main.dto.MainhelpDto;
import com.ict.market.main.dto.MarketMemberDto;

public interface MainDao {
	/* ********** �α��� ���� ��� ********** */
	public MarketMemberDto login(String id);
	public void register(MarketMemberDto member);
	public void registerKakao(MarketMemberDto member);
	public String kakaoInsertChk(String id);
	/* ********** �α��� ���� ��� ********** */
	public List<MainhelpDto> mainHelp();
	public List<MainhelpDto> mainNotice();
	public String registerIdCheck(String id);
}