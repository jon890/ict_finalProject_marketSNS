package com.ict.market.main.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.ict.market.main.dto.MarketMemberDto;

public interface MainService {
	
	/* ********** 로그인 관련 기능 ********** */
	public String login(String id, String password, HttpSession session, HttpServletRequest req);
	public void loginWithKakao(String id, String password, String profileImg, HttpSession session, HttpServletRequest req);
	public void register(MarketMemberDto member);
	/* ********** 로그인 관련 기능 ********** */
	public void mainHelp(Model model);
	public String registerIdCheck(String id);
}