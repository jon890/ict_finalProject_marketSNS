package com.ict.market.main.dao;

import com.ict.market.main.dto.MarketMemberDto;

public interface MainDao {
	
	/* ********** �α��� ���� ��� ********** */
	public MarketMemberDto login(String id);
	public void register(MarketMemberDto member);
	/* ********** �α��� ���� ��� ********** */
	
}