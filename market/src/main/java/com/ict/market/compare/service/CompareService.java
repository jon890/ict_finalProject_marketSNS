package com.ict.market.compare.service;

import java.util.List;

import org.springframework.ui.Model;

import com.ict.market.compare.dto.marketPriceDTO;
import com.ict.market.compare.dto.martPriceDTO;

public interface CompareService {
	public List<marketPriceDTO> marketPrice(Model model);
	public List<martPriceDTO> martPrice(Model model);
	public void comparePrice(Model model);
	public void compareAgo(Model model);
	public void marketAgo(Model model);
	public void martAgo(Model model);
	/*시장 품목별 출력 메소드*/
	public void marketCorn(Model model);
	public void marketMeat(Model model);
	public void marketFish(Model model);
	public void marketFruit(Model model);
	public void marketVege(Model model);
	public void marketGro(Model model);
	public void marketOil(Model model);
	public void marketCleaner(Model model);
	/*마트 품목별 출력 메소드*/
	public void martCorn(Model model);
	public void martMeat(Model model);
	public void martFish(Model model);
	public void martFruit(Model model);
	public void martVege(Model model);
	public void martGro(Model model);
	public void martOil(Model model);
	public void martCleaner(Model model);
	/*시장vs마트 품목별 출력 메소드*/
	public void compareCorn(Model model);
	public void compareMeat(Model model);
	public void compareFish(Model model);
	public void compareFruit(Model model);
	public void compareVege(Model model);
	public void compareGro(Model model);
	public void compareOil(Model model);
	public void compareCleaner(Model model);
	
	
}
