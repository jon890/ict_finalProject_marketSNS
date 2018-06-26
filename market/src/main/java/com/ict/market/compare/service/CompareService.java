package com.ict.market.compare.service;

import java.util.List;

import org.springframework.ui.Model;

import com.ict.market.compare.dto.CompareDTO;

public interface CompareService {
	public List<CompareDTO> marketPrice(Model model);
}
