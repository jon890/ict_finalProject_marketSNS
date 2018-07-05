package com.ict.market.main.dao;

import com.ict.market.main.dto.MarketMemberDto;

public interface MainDao {
	
	/* ********** 로그인 관련 기능 ********** */
	public MarketMemberDto login(String id);
	public void register(MarketMemberDto member);
	/* ********** 로그인 관련 기능 ********** */
	
}