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
	public List<marketPriceDTO> marketPrice() {
		return sqlSession.selectList(nameSpace+".marketList");
	}

	@Override
	public List<martPriceDTO> martPrice() {
		return sqlSession.selectList(nameSpace+".martList");
	}

	@Override
	public List<ComparePriceDTO> comparePrice() {
		return sqlSession.selectList(nameSpace+".compareList");
	}
	
	/*-----------------시장 품목별 출력 메소드------------------*/
	public List<marketPriceDTO> marketCorn(){
		return sqlSession.selectList(nameSpace+".marketCorn");
	}

	@Override
	public List<marketPriceDTO> marketMeat() {
		return sqlSession.selectList(nameSpace+".marketMeat");
	}

	@Override
	public List<marketPriceDTO> marketFish() {
		
		return sqlSession.selectList(nameSpace+".marketFish");
	}

	@Override
	public List<marketPriceDTO> marketFruit() {
		return sqlSession.selectList(nameSpace+".marketFruit");
	}

	@Override
	public List<marketPriceDTO> marketVege() {
		return sqlSession.selectList(nameSpace+".marketVege");
	}

	@Override
	public List<marketPriceDTO> marketGro() {
		return sqlSession.selectList(nameSpace+".marketGro");
	}

	@Override
	public List<marketPriceDTO> marketOil() {
		return sqlSession.selectList(nameSpace+".marketOil");
	}

	@Override
	public List<marketPriceDTO> marketCleaner() {
		return sqlSession.selectList(nameSpace+".marketCorn");
	}
	
	/*-------------마트 품목별 출력 메소드-----------------*/
	@Override
	public List<martPriceDTO> martCorn() {
		return sqlSession.selectList(nameSpace+".martCorn");
	}

	@Override
	public List<martPriceDTO> martMeat() {
		return sqlSession.selectList(nameSpace+".martMeat");
	}

	@Override
	public List<martPriceDTO> martFish() {
		return sqlSession.selectList(nameSpace+".martFish");
	}

	@Override
	public List<martPriceDTO> martFruit() {
		return sqlSession.selectList(nameSpace+".martFruit");
	}

	@Override
	public List<martPriceDTO> martVege() {
		return sqlSession.selectList(nameSpace+".martVege");
	}

	@Override
	public List<martPriceDTO> martGro() {
		return sqlSession.selectList(nameSpace+".martGro");
	}

	@Override
	public List<martPriceDTO> martOil() {
		return sqlSession.selectList(nameSpace+".martOil");
	}

	@Override
	public List<martPriceDTO> martCleaner() {
		return sqlSession.selectList(nameSpace+".martCleaner");
	}

	@Override
	public List<ComparePriceDTO> compareCorn() {
		return sqlSession.selectList(nameSpace+".compareCorn");
	}

	@Override
	public List<ComparePriceDTO> compareMeat() {
		return sqlSession.selectList(nameSpace+".compareMeat");
	}

	@Override
	public List<ComparePriceDTO> compareFish() {
		return sqlSession.selectList(nameSpace+".compareFish");
	}

	@Override
	public List<ComparePriceDTO> compareFruit() {
		return sqlSession.selectList(nameSpace+".compareFruit");
	}

	@Override
	public List<ComparePriceDTO> compareVege() {
		return sqlSession.selectList(nameSpace+".compareVege");
	}

	@Override
	public List<ComparePriceDTO> compareGro() {
		return sqlSession.selectList(nameSpace+".compareGro");
	}

	@Override
	public List<ComparePriceDTO> compareOil() {
		return sqlSession.selectList(nameSpace+".compareOil");
	}

	@Override
	public List<ComparePriceDTO> compareCleaner() {
		return sqlSession.selectList(nameSpace+".compareCleaner");
	}
	
	
	
	
	
	
	
}
