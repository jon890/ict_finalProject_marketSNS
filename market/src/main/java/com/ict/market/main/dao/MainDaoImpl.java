package com.ict.market.main.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MainDaoImpl implements MainDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private final String nameSpace = "com.ict.market.main.dao.MainDao";

	@Override
	public String login(String id) {
		return sqlSession.selectOne(nameSpace.concat(".login"), id);
	}
	
}