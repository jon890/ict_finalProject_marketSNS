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
	
	/* ********** ������������ ��������, ������ �� 4���� �������� ��� ********** */
	public List<MainhelpDto> mainHelp();
	public List<MainhelpDto> mainNotice();
	/* ********** ������������ ��������, ������ �� 4���� �������� ��� ********** */
	
	/* ********** ���̵� �ߺ� üũ ********** */
	public String registerIdCheck(String id);
	/* ********** ���̵� �ߺ� üũ ********** */
	
	/* ********** ȸ�� ���� ����  ********** */
	public MarketMemberDto getMemberUpdate(String id);
	public void memberUpdate(MarketMemberDto member);
	/* ********** ȸ�� ���� ����  ********** */
	
	/* ********** ȸ�� Ż�� ********** */
	public void memberDelete(String id);
	/* ********** ȸ�� Ż�� ********** */
}