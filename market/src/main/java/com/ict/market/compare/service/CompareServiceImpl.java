package com.ict.market.compare.service;

import java.util.List;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ict.market.compare.controller.CompareController;
import com.ict.market.compare.dao.CompareDAO;
import com.ict.market.compare.dto.marketPriceDTO;
import com.ict.market.compare.dto.martPriceDTO;
@Service
public class CompareServiceImpl implements CompareService {
	
	private static final Logger logger = org.slf4j.LoggerFactory.getLogger(CompareController.class);
	
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

	
}
