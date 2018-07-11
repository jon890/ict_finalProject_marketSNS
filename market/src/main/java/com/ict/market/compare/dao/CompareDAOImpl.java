package com.ict.market.compare.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.market.compare.dto.ComparePriceDTO;
import com.ict.market.compare.dto.marketPriceDTO;
import com.ict.market.compare.dto.martPriceDTO;

@Repository
public class CompareDAOImpl implements CompareDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private final String nameSpace="com.ict.market.compare.dao.CompareDAO";
	
	
	@Override
	public List<marketPriceDTO> marketPrice(String weekends) {
		return sqlSession.selectList(nameSpace+".marketList",weekends);
	}
	
	@Override
	public List<marketPriceDTO> marketAgo(String weekends) {
		return sqlSession.selectList(nameSpace+".marketAgo",weekends);
	}

	@Override
	public List<martPriceDTO> martPrice(String weekends) {
		return sqlSession.selectList(nameSpace+".martList");
	}
	

	@Override
	public List<martPriceDTO> martAgo(String weekends) {
		return sqlSession.selectList(nameSpace+".martAgo",weekends);
	}

	
	
	
	@Override
	public List<ComparePriceDTO> comparePrice(String weekends) {
		return sqlSession.selectList(nameSpace+".compareList");
	}
	
	@Override
	public List<ComparePriceDTO> compareAgo(String weekends) {
		return sqlSession.selectList(nameSpace+".compareAgo",weekends);
	}

	/*-----------------시장 품목별 출력 메소드------------------*/
	public List<marketPriceDTO> marketCorn(String weekends){
		return sqlSession.selectList(nameSpace+".marketCorn",weekends);
	}

	@Override
	public List<marketPriceDTO> marketMeat(String weekends) {
		return sqlSession.selectList(nameSpace+".marketMeat",weekends);
	}

	@Override
	public List<marketPriceDTO> marketFish(String weekends) {
		
		return sqlSession.selectList(nameSpace+".marketFish",weekends);
	}

	@Override
	public List<marketPriceDTO> marketFruit(String weekends) {
		return sqlSession.selectList(nameSpace+".marketFruit",weekends);
	}

	@Override
	public List<marketPriceDTO> marketVege(String weekends) {
		return sqlSession.selectList(nameSpace+".marketVege",weekends);
	}

	@Override
	public List<marketPriceDTO> marketGro(String weekends) {
		return sqlSession.selectList(nameSpace+".marketGro",weekends);
	}

	@Override
	public List<marketPriceDTO> marketOil(String weekends) {
		return sqlSession.selectList(nameSpace+".marketOil",weekends);
	}

	@Override
	public List<marketPriceDTO> marketCleaner(String weekends) {
		return sqlSession.selectList(nameSpace+".marketCorn",weekends);
	}
	
	/*-------------마트 품목별 출력 메소드-----------------*/
	@Override
	public List<martPriceDTO> martCorn(String weekends) {
		return sqlSession.selectList(nameSpace+".martCorn",weekends);
	}

	@Override
	public List<martPriceDTO> martMeat(String weekends) {
		return sqlSession.selectList(nameSpace+".martMeat",weekends);
	}

	@Override
	public List<martPriceDTO> martFish(String weekends) {
		return sqlSession.selectList(nameSpace+".martFish",weekends);
	}

	@Override
	public List<martPriceDTO> martFruit(String weekends) {
		return sqlSession.selectList(nameSpace+".martFruit",weekends);
	}

	@Override
	public List<martPriceDTO> martVege(String weekends) {
		return sqlSession.selectList(nameSpace+".martVege",weekends);
	}

	@Override
	public List<martPriceDTO> martGro(String weekends) {
		return sqlSession.selectList(nameSpace+".martGro",weekends);
	}

	@Override
	public List<martPriceDTO> martOil(String weekends) {
		return sqlSession.selectList(nameSpace+".martOil",weekends);
	}

	@Override
	public List<martPriceDTO> martCleaner(String weekends) {
		return sqlSession.selectList(nameSpace+".martCleaner",weekends);
	}

	@Override
	public List<ComparePriceDTO> compareCorn(String weekends) {
		return sqlSession.selectList(nameSpace+".compareCorn",weekends);
	}

	@Override
	public List<ComparePriceDTO> compareMeat(String weekends) {
		return sqlSession.selectList(nameSpace+".compareMeat",weekends);
	}

	@Override
	public List<ComparePriceDTO> compareFish(String weekends) {
		return sqlSession.selectList(nameSpace+".compareFish",weekends);
	}

	@Override
	public List<ComparePriceDTO> compareFruit(String weekends) {
		return sqlSession.selectList(nameSpace+".compareFruit",weekends);
	}

	@Override
	public List<ComparePriceDTO> compareVege(String weekends) {
		return sqlSession.selectList(nameSpace+".compareVege",weekends);
	}

	@Override
	public List<ComparePriceDTO> compareGro(String weekends) {
		return sqlSession.selectList(nameSpace+".compareGro",weekends);
	}

	@Override
	public List<ComparePriceDTO> compareOil(String weekends) {
		return sqlSession.selectList(nameSpace+".compareOil",weekends);
	}

	@Override
	public List<ComparePriceDTO> compareCleaner(String weekends) {
		return sqlSession.selectList(nameSpace+".compareCleaner",weekends);
	}
	
	
	
	
	
	
	
}
