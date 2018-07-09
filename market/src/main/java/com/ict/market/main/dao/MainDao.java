package com.ict.market.main.dao;

import java.util.List;

import com.ict.market.main.dto.MainhelpDto;
import com.ict.market.main.dto.MarketMemberDto;

public interface MainDao {
	/* ********** 로그인 관련 기능 ********** */
	public MarketMemberDto login(String id);
	public void register(MarketMemberDto member);
	/* ********** 로그인 관련 기능 ********** */
	public List<MainhelpDto> mainHelp();
	public List<MainhelpDto> mainNotice();
}