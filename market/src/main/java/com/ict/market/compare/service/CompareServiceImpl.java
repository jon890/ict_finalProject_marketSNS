package com.ict.market.compare.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ict.market.compare.dao.CompareDAO;
@Service
public class CompareServiceImpl implements CompareService {
	
	@Autowired
	private CompareDAO compareDAO;
	
	@Override
	public void marketPrice(Model model,String weekends) {
		System.out.println(compareDAO.marketPrice(weekends));
		model.addAttribute("marketPriceList",compareDAO.marketPrice(weekends));
	}
	
	

	@Override
	public void marketAgo(Model model,String weekends) {
		model.addAttribute("marketPriceList",compareDAO.marketAgo(weekends));
	}



	@Override
	public void martPrice(Model model,String weekends) {
		model.addAttribute("martPriceList",compareDAO.martPrice(weekends));
	}
	
	public void martAgo(Model model,String weekends) {
		model.addAttribute("martPriceList",compareDAO.martAgo(weekends));
	}

	@Override
	public void comparePrice(Model model,String weekends) {
		model.addAttribute("comparePriceList",compareDAO.comparePrice(weekends));
	}
	
	
	
	@Override
	public void compareAgo(Model model,String weekends) {
		model.addAttribute("comparePriceList",compareDAO.compareAgo(weekends));
	}



	/*시장 품목별 출력 메소드*/
	@Override
	public void marketCorn(Model model,String weekends) {
		model.addAttribute("marketPriceList",compareDAO.marketCorn(weekends));
	}

	@Override
	public void marketMeat(Model model,String weekends) {
		model.addAttribute("marketPriceList",compareDAO.marketMeat(weekends));
	}

	@Override
	public void marketFish(Model model,String weekends) {
		model.addAttribute("marketPriceList",compareDAO.marketFish(weekends));
	}

	@Override
	public void marketFruit(Model model,String weekends) {
		model.addAttribute("marketPriceList",compareDAO.marketFruit(weekends));
	}

	@Override
	public void marketVege(Model model,String weekends) {
		model.addAttribute("marketPriceList",compareDAO.marketVege(weekends));
		
	}

	@Override
	public void marketGro(Model model,String weekends) {
		model.addAttribute("marketPriceList",compareDAO.marketGro(weekends));
		
	}

	@Override
	public void marketOil(Model model,String weekends) {
		model.addAttribute("marketPriceList",compareDAO.marketOil(weekends));
		
	}

	@Override
	public void marketCleaner(Model model,String weekends) {
		model.addAttribute("marketPriceList",compareDAO.marketCleaner(weekends));
	}
	/*마트 품목별 출력 메소드*/
	@Override
	public void martCorn(Model model,String weekends) {
		model.addAttribute("martPriceList",compareDAO.martCorn(weekends));
	}

	@Override
	public void martMeat(Model model,String weekends) {
		model.addAttribute("martPriceList",compareDAO.martMeat(weekends));
	}

	@Override
	public void martFish(Model model,String weekends) {
		model.addAttribute("martPriceList",compareDAO.martFish(weekends));
		
	}

	@Override
	public void martFruit(Model model,String weekends) {
		model.addAttribute("martPriceList",compareDAO.martFruit(weekends));
		
	}

	@Override
	public void martVege(Model model,String weekends) {
		model.addAttribute("martPriceList",compareDAO.martVege(weekends));
		
	}

	@Override
	public void martGro(Model model,String weekends) {
		model.addAttribute("martPriceList",compareDAO.martGro(weekends));
		
	}

	@Override
	public void martOil(Model model,String weekends) {
		model.addAttribute("martPriceList",compareDAO.martOil(weekends));
		
	}

	@Override
	public void martCleaner(Model model,String weekends) {
		model.addAttribute("martPriceList",compareDAO.martCleaner(weekends));
		
	}
	/* 시장 vs 마트  품목별 출력 메소드 */
	@Override
	public void compareCorn(Model model,String weekends) {
		model.addAttribute("comparePriceList",compareDAO.compareCorn(weekends));
		
	}

	@Override
	public void compareMeat(Model model,String weekends) {
		model.addAttribute("comparePriceList",compareDAO.compareMeat(weekends));
		
	}

	@Override
	public void compareFish(Model model,String weekends) {
		model.addAttribute("comparePriceList",compareDAO.compareFish(weekends));
		
	}

	@Override
	public void compareFruit(Model model,String weekends) {
		model.addAttribute("comparePriceList",compareDAO.compareFruit(weekends));
		
	}

	@Override
	public void compareVege(Model model,String weekends) {
		model.addAttribute("comparePriceList",compareDAO.compareVege(weekends));
		
	}

	@Override
	public void compareGro(Model model,String weekends) {
		model.addAttribute("comparePriceList",compareDAO.compareGro(weekends));
		
	}

	@Override
	public void compareOil(Model model,String weekends) {
		model.addAttribute("comparePriceList",compareDAO.compareOil(weekends));
	}

	@Override
	public void compareCleaner(Model model,String weekends) {
		model.addAttribute("comparePriceList",compareDAO.compareCleaner(weekends));
	}
 
	
	
	
	
	
	
	
	
}
