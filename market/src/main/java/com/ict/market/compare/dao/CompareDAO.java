package com.ict.market.compare.dao;

import java.util.List;

import com.ict.market.compare.dto.ComparePriceDTO;
import com.ict.market.compare.dto.marketPriceDTO;
import com.ict.market.compare.dto.martPriceDTO;

public interface CompareDAO {
	public List<marketPriceDTO> marketPrice();
	public List<marketPriceDTO> marketAgo();
	public List<martPriceDTO> martPrice();
	public List<martPriceDTO> martAgo();
	public List<ComparePriceDTO> comparePrice();
	public List<ComparePriceDTO> compareAgo();
	/*시장 품목별 출력 dao*/
	public List<marketPriceDTO> marketCorn();
	public List<marketPriceDTO> marketMeat();
	public List<marketPriceDTO> marketFish();
	public List<marketPriceDTO> marketFruit();
	public List<marketPriceDTO> marketVege();
	public List<marketPriceDTO> marketGro();
	public List<marketPriceDTO> marketOil();
	public List<marketPriceDTO> marketCleaner();
	 /*마트 품목별 출력 dao*/
	public List<martPriceDTO> martCorn();
	public List<martPriceDTO> martMeat();
	public List<martPriceDTO> martFish();
	public List<martPriceDTO> martFruit();
	public List<martPriceDTO> martVege();
	public List<martPriceDTO> martGro();
	public List<martPriceDTO> martOil();
	public List<martPriceDTO> martCleaner();
	/*시장vs마트 품목별 출력 dao*/
	public List<ComparePriceDTO> compareCorn();
	public List<ComparePriceDTO> compareMeat();
	public List<ComparePriceDTO> compareFish();
	public List<ComparePriceDTO> compareFruit();
	public List<ComparePriceDTO> compareVege();
	public List<ComparePriceDTO> compareGro();
	public List<ComparePriceDTO> compareOil();
	public List<ComparePriceDTO> compareCleaner();
		
	
}
