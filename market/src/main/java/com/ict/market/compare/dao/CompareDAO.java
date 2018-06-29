package com.ict.market.compare.dao;

import java.util.List;

import com.ict.market.compare.dto.ComparePriceDTO;
import com.ict.market.compare.dto.marketPriceDTO;
import com.ict.market.compare.dto.martPriceDTO;

public interface CompareDAO {
	public List<marketPriceDTO> marketPrice();
	public List<martPriceDTO> martPrice();
	public List<ComparePriceDTO> comparePrice();
}
