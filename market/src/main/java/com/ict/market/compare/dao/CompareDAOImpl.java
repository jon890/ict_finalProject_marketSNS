package com.ict.market.compare.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.market.compare.dto.CompareDTO;

@Repository
public class CompareDAOImpl implements CompareDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private final String nameSpace="com.ict.market.compare.dao.CompareDAO";
	
	
	@Override
	public List<CompareDTO> marketPrice() {
		
		return sqlSession.selectList(nameSpace+".marketList");
	}
	
	
}
