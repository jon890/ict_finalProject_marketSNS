package com.ict.market.marketIntroduce.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.market.marketIntroduce.dto.MarketDto;

@Repository
public class MarketIntroduceDaoImpl implements MarketIntroduceDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private final String nameSpace = "com.ict.market.marketIntroduce.dao.MarketIntroduceDao";

	@Override
	public List<MarketDto> marketList() {
		
		return sqlSession.selectList(nameSpace+".marketList");
	}
}