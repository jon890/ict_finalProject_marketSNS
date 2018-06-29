package com.ict.market.compare.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.market.compare.dto.marketPriceDTO;
import com.ict.market.compare.dto.martPriceDTO;

@Repository
public class CompareDAOImpl implements CompareDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private final String nameSpace="com.ict.market.compare.dao.CompareDAO";
	
	
	@Override
	public List<marketPriceDTO> marketPrice() {
		return sqlSession.selectList(nameSpace+".marketList");
	}

	@Override
	public List<martPriceDTO> martPrice() {
		return sqlSession.selectList(nameSpace+".martList");
	}
	
	
}
