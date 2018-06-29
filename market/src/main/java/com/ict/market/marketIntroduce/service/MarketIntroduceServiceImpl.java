package com.ict.market.marketIntroduce.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ict.market.marketIntroduce.dao.MarketIntroduceDao;

@Service
public class MarketIntroduceServiceImpl implements MarketIntroduceService {
	@Autowired
	MarketIntroduceDao marketIntroduceDao;

	@Override
	public void marketList(Model model) {
		System.out.println(marketIntroduceDao.marketList());
		model.addAttribute("marketList", marketIntroduceDao.marketList());
	}

}
