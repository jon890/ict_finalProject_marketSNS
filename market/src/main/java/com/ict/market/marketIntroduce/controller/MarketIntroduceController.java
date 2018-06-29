package com.ict.market.marketIntroduce.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ict.market.marketIntroduce.service.MarketIntroduceService;

@Controller
public class MarketIntroduceController {
	@Autowired
	MarketIntroduceService marketIntroduceService;
	
	private static final Logger logger = LoggerFactory.getLogger(MarketIntroduceController.class);
	
	@RequestMapping(value="/main.mid" , method = RequestMethod.GET)
	public String marketMain(Model model) {
		logger.info("광주의 시장 - 메인 페이지 이동");
		marketIntroduceService.marketList(model);
		return "marketMain";
	}
	
}