package com.ict.market.main.dao;

import java.util.List;

import com.ict.market.main.dto.MainhelpDto;
import com.ict.market.main.dto.MarketMemberDto;

public interface MainDao {
	/* ********** 로그인 관련 기능 ********** */
	public MarketMemberDto login(String id);
	public void register(MarketMemberDto member);
	public void registerKakao(MarketMemberDto member);
	public String kakaoInsertChk(String id);
	/* ********** 로그인 관련 기능 ********** */
	
	/* ********** 메인페이지에 공지사항, 고객센터 글 4개씩 가져오기 기능 ********** */
	public List<MainhelpDto> mainHelp();
	public List<MainhelpDto> mainNotice();
	/* ********** 메인페이지에 공지사항, 고객센터 글 4개씩 가져오기 기능 ********** */
	
	/* ********** 아이디 중복 체크 ********** */
	public String registerIdCheck(String id);
	/* ********** 아이디 중복 체크 ********** */
	
	/* ********** 회원 정보 수정  ********** */
	public MarketMemberDto getMemberUpdate(String id);
	public void memberUpdate(MarketMemberDto member);
	/* ********** 회원 정보 수정  ********** */
	
	/* ********** 회원 탈퇴 ********** */
	public void memberDelete(String id);
	/* ********** 회원 탈퇴 ********** */
}