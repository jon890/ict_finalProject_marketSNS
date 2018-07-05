package com.ict.market.compare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ict.market.compare.dao.CompareDAO;
import com.ict.market.compare.dto.marketPriceDTO;
import com.ict.market.compare.dto.martPriceDTO;
@Service
public class CompareServiceImpl implements CompareService {
	
	@Autowired
	private CompareDAO compareDAO;
	
	@Override
	public List<marketPriceDTO> marketPrice(Model model) {
		System.out.println(compareDAO.marketPrice());
		model.addAttribute("marketPriceList",compareDAO.marketPrice());
		return compareDAO.marketPrice();
	}

	@Override
	public List<martPriceDTO> martPrice(Model model) {
		System.out.println(compareDAO.martPrice());
		model.addAttribute("martPriceList",compareDAO.martPrice());
		return null;
	}

	@Override
	public void comparePrice(Model model) {
		model.addAttribute("comparePriceList",compareDAO.comparePrice());
	}
	/*시장 품목별 출력 메소드*/
	@Override
	public void marketCorn(Model model) {
		model.addAttribute("marketPriceList",compareDAO.marketCorn());
	}

	@Override
	public void marketMeat(Model model) {
		model.addAttribute("marketPriceList",compareDAO.marketMeat());
	}

	@Override
	public void marketFish(Model model) {
		model.addAttribute("marketPriceList",compareDAO.marketFish());
	}

	@Override
	public void marketFruit(Model model) {
		model.addAttribute("marketPriceList",compareDAO.marketFruit());
	}

	@Override
	public void marketVege(Model model) {
		model.addAttribute("marketPriceList",compareDAO.marketVege());
		
	}

	@Override
	public void marketGro(Model model) {
		model.addAttribute("marketPriceList",compareDAO.marketGro());
		
	}

	@Override
	public void marketOil(Model model) {
		model.addAttribute("marketPriceList",compareDAO.marketOil());
		
	}

	@Override
	public void marketCleaner(Model model) {
		model.addAttribute("marketPriceList",compareDAO.marketCleaner());
	}
	/*마트 품목별 출력 메소드*/
	@Override
	public void martCorn(Model model) {
		model.addAttribute("martPriceList",compareDAO.martCorn());
	}

	@Override
	public void martMeat(Model model) {
		model.addAttribute("martPriceList",compareDAO.martMeat());
	}

	@Override
	public void martFish(Model model) {
		model.addAttribute("martPriceList",compareDAO.martFish());
		
	}

	@Override
	public void martFruit(Model model) {
		model.addAttribute("martPriceList",compareDAO.martFruit());
		
	}

	@Override
	public void martVege(Model model) {
		model.addAttribute("martPriceList",compareDAO.martVege());
		
	}

	@Override
	public void martGro(Model model) {
		model.addAttribute("martPriceList",compareDAO.martGro());
		
	}

	@Override
	public void martOil(Model model) {
		model.addAttribute("martPriceList",compareDAO.martOil());
		
	}

	@Override
	public void martCleaner(Model model) {
		model.addAttribute("martPriceList",compareDAO.martCleaner());
		
	}
	/* 시장 vs 마트  품목별 출력 메소드 */
	@Override
	public void compareCorn(Model model) {
		model.addAttribute("comparePriceList",compareDAO.compareCorn());
		
	}

	@Override
	public void compareMeat(Model model) {
		model.addAttribute("comparePriceList",compareDAO.compareMeat());
		
	}

	@Override
	public void compareFish(Model model) {
		model.addAttribute("comparePriceList",compareDAO.compareFish());
		
	}

	@Override
	public void compareFruit(Model model) {
		model.addAttribute("comparePriceList",compareDAO.compareFruit());
		
	}

	@Override
	public void compareVege(Model model) {
		model.addAttribute("comparePriceList",compareDAO.compareVege());
		
	}

	@Override
	public void compareGro(Model model) {
		model.addAttribute("comparePriceList",compareDAO.compareGro());
		
	}

	@Override
	public void compareOil(Model model) {
		model.addAttribute("comparePriceList",compareDAO.compareOil());
	}

	@Override
	public void compareCleaner(Model model) {
		model.addAttribute("comparePriceList",compareDAO.compareCleaner());
	}
 
	
	
	
	
	
	
	
	
}
