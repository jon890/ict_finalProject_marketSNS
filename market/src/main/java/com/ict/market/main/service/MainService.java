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
	
	/* ********** 메인페이지에 공지사항, 고객센터 글 4개씩 가져오기 기능 ********** */
	public void indexArticle(Model model);
	/* ********** 메인페이지에 공지사항, 고객센터 글 4개씩 가져오기 기능 ********** */
	
	/* ********** 아이디 중복 체크 ********** */
	public String registerIdCheck(String id);
	/* ********** 아이디 중복 체크 ********** */
}