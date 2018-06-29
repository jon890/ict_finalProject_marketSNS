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
 
	
}
