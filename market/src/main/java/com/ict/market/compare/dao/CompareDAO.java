package com.ict.market.compare.dao;

import java.util.List;

import com.ict.market.compare.dto.ComparePriceDTO;
import com.ict.market.compare.dto.marketPriceDTO;
import com.ict.market.compare.dto.martPriceDTO;

public interface CompareDAO {
	public List<marketPriceDTO> marketPrice(String weekends);
	public List<marketPriceDTO> marketAgo(String weekends);
	public List<martPriceDTO> martPrice(String weekends);
	public List<martPriceDTO> martAgo(String weekends);
	public List<ComparePriceDTO> comparePrice(String weekends);
	public List<ComparePriceDTO> compareAgo(String weekends);
	/*시장 품목별 출력 dao*/
	public List<marketPriceDTO> marketCorn(String weekends);
	public List<marketPriceDTO> marketMeat(String weekends);
	public List<marketPriceDTO> marketFish(String weekends);
	public List<marketPriceDTO> marketFruit(String weekends);
	public List<marketPriceDTO> marketVege(String weekends);
	public List<marketPriceDTO> marketGro(String weekends);
	public List<marketPriceDTO> marketOil(String weekends);
	public List<marketPriceDTO> marketCleaner(String weekends);
	 /*마트 품목별 출력 dao*/
	public List<martPriceDTO> martCorn(String weekends);
	public List<martPriceDTO> martMeat(String weekends);
	public List<martPriceDTO> martFish(String weekends);
	public List<martPriceDTO> martFruit(String weekends);
	public List<martPriceDTO> martVege(String weekends);
	public List<martPriceDTO> martGro(String weekends);
	public List<martPriceDTO> martOil(String weekends);
	public List<martPriceDTO> martCleaner(String weekends);
	/*시장vs마트 품목별 출력 dao*/
	public List<ComparePriceDTO> compareCorn(String weekends);
	public List<ComparePriceDTO> compareMeat(String weekends);
	public List<ComparePriceDTO> compareFish(String weekends);
	public List<ComparePriceDTO> compareFruit(String weekends);
	public List<ComparePriceDTO> compareVege(String weekends);
	public List<ComparePriceDTO> compareGro(String weekends);
	public List<ComparePriceDTO> compareOil(String weekends);
	public List<ComparePriceDTO> compareCleaner(String weekends);
		
	
}
