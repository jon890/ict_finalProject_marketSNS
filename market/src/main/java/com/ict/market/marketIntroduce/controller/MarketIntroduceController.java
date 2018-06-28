package com.ict.market.marketIntroduce.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MarketIntroduceController {
	
	
	private static final Logger logger = LoggerFactory.getLogger(MarketIntroduceController.class);
	
	@RequestMapping(value="/main.mid" , method = RequestMethod.GET)
	public String marketMain() {
		logger.info("������ ���� - ���� ������ �̵�");
		return "marketMain";
	}
	
}