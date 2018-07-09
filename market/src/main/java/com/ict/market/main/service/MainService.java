package com.ict.market.main.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.ict.market.main.dto.MarketMemberDto;

public interface MainService {
	
	/* ********** �α��� ���� ��� ********** */
	public String login(String id, String password, HttpSession session, HttpServletRequest req);
	public String loginWithKakao(String id, String password, String profileImg, HttpSession session, HttpServletRequest req);
	public void register(MarketMemberDto member);
	/* ********** �α��� ���� ��� ********** */
}