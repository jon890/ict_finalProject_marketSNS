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
	
	/* ********** 메인페이지에 공지사항, 고객센터 글 4개씩 가져오기 기능 ********** */
	@Override
	public List<MainhelpDto> mainHelp() {
		return sqlSession.selectList(nameSpace.concat(".mainHelp"));
	}

	@Override
	public List<MainhelpDto> mainNotice() {
		return sqlSession.selectList(nameSpace.concat(".mainNotice"));
	}
	/* ********** 메인페이지에 공지사항, 고객센터 글 4개씩 가져오기 기능 ********** */
	

	/* ********** 로그인 관련 기능 ********** */
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
	/* ********** 로그인 관련 기능 ********** */


	
	/* ********** 아이디 중복 체크 ********** */
	public String registerIdCheck(String id) {
		return sqlSession.selectOne(nameSpace+".registerIdCheck", id);
	}
	/* ********** 아이디 중복 체크 ********** */

	
	
	/* ********** 회원 정보 수정  ********** */
	@Override
	public MarketMemberDto getMemberUpdate(String id) {
		return sqlSession.selectOne(nameSpace.concat(".getMemberUpdate"), id);
	}

	
	@Override
	public void memberUpdate(MarketMemberDto member) {
		sqlSession.update(nameSpace.concat(".memberUpdate"), member);
	}
	/* ********** 회원 정보 수정  ********** */


	/* ********** 회원 탈퇴 ********** */
	@Override
	public void memberDelete(String id) {
		sqlSession.delete(nameSpace.concat(".memberDelete"), id);
	}
	/* ********** 회원 탈퇴 ********** */
	
}