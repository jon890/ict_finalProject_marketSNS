package com.ict.market.main.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.ict.market.main.dto.MarketMemberDto;

public interface MainService {
	
	/* ********** �α��� ���� ��� ********** */
	public String login(String id, String password, HttpSession session, HttpServletRequest req);
	public void loginWithKakao(String id, String password, String profileImg, HttpSession session, HttpServletRequest req);
	public void register(MarketMemberDto member);
	/* ********** �α��� ���� ��� ********** */
	
	/* ********** ������������ ��������, ������ �� 4���� �������� ��� ********** */
	public void indexArticle(Model model);
	/* ********** ������������ ��������, ������ �� 4���� �������� ��� ********** */
	
	/* ********** ���̵� �ߺ� üũ ********** */
	public String registerIdCheck(String id);
	/* ********** ���̵� �ߺ� üũ ********** */
}