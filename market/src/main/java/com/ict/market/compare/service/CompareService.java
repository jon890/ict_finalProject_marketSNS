package com.ict.market.compare.service;

import java.util.List;

import org.springframework.ui.Model;

import com.ict.market.compare.dto.marketPriceDTO;
import com.ict.market.compare.dto.martPriceDTO;

public interface CompareService {
	public List<marketPriceDTO> marketPrice(Model model);
	public List<martPriceDTO> martPrice(Model model);
}
