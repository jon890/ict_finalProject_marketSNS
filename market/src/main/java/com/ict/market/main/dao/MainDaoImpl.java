package com.ict.market.main.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.market.main.dto.MainhelpDto;
import com.ict.market.main.dto.MarketMemberDto;

@Repository
public class MainDaoImpl implements MainDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private final String nameSpace = "com.ict.market.main.dao.MainDao";
	
	/* ********** ������������ ��������, ������ �� 4���� �������� ��� ********** */
	@Override
	public List<MainhelpDto> mainHelp() {
		return sqlSession.selectList(nameSpace.concat(".mainHelp"));
	}

	@Override
	public List<MainhelpDto> mainNotice() {
		return sqlSession.selectList(nameSpace.concat(".mainNotice"));
	}
	/* ********** ������������ ��������, ������ �� 4���� �������� ��� ********** */
	

	/* ********** �α��� ���� ��� ********** */
	@Override
	public MarketMemberDto login(String id) {
		return sqlSession.selectOne(nameSpace.concat(".login"), id);
	}

	@Override
	public void register(MarketMemberDto member) {
		sqlSession.insert(nameSpace.concat(".register"), member);
	}
	
	@Override
	public void registerKakao(MarketMemberDto member) {
		sqlSession.insert(nameSpace.concat(".registerKakao"), member);
	}
	
	@Override
	public String kakaoInsertChk(String id) {
		return sqlSession.selectOne(nameSpace.concat(".kakaoInsertChk"), id);
	}
	/* ********** �α��� ���� ��� ********** */


	
	/* ********** ���̵� �ߺ� üũ ********** */
	public String registerIdCheck(String id) {
		return sqlSession.selectOne(nameSpace+".registerIdCheck", id);
	}
	/* ********** ���̵� �ߺ� üũ ********** */

	
	
	/* ********** ȸ�� ���� ����  ********** */
	@Override
	public MarketMemberDto getMemberUpdate(String id) {
		return sqlSession.selectOne(nameSpace.concat(".getMemberUpdate"), id);
	}

	
	@Override
	public void memberUpdate(MarketMemberDto member) {
		sqlSession.update(nameSpace.concat(".memberUpdate"), member);
	}
	/* ********** ȸ�� ���� ����  ********** */


	/* ********** ȸ�� Ż�� ********** */
	@Override
	public void memberDelete(String id) {
		sqlSession.delete(nameSpace.concat(".memberDelete"), id);
	}
	/* ********** ȸ�� Ż�� ********** */
	
}