package com.ict.market.compare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ict.market.compare.dao.CompareDAO;
import com.ict.market.compare.dto.CompareDTO;
@Service
public class CompareServiceImpl implements CompareService {
	
	@Autowired
	private CompareDAO compareDAO;
	
	@Override
	public List<CompareDTO> marketPrice(Model model) {
		model.addAttribute("marketPriceList",compareDAO.marketPrice());
		return compareDAO.marketPrice();
	}

	
}
