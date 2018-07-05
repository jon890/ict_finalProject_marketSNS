package com.ict.market.main.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.market.main.dto.MarketMemberDto;

@Repository
public class MainDaoImpl implements MainDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private final String nameSpace = "com.ict.market.main.dao.MainDao";

	/* ********** 로그인 관련 기능 ********** */
	@Override
	public MarketMemberDto login(String id) {
		return sqlSession.selectOne(nameSpace.concat(".login"), id);
	}

	@Override
	public void register(MarketMemberDto member) {
		sqlSession.insert(nameSpace.concat(".register"), member);
	}
	/* ********** 로그인 관련 기능 ********** */
	
	
}