package com.ict.market.marketIntroduce.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class marketIntroduceController {
	
	
	private static final Logger logger = LoggerFactory.getLogger(marketIntroduceController.class);
	
	@RequestMapping(value="/main.mid" , method = RequestMethod.GET)
	public String marketMain() {
		logger.info("광주의 시장 - 메인 페이지 이동");
		return "marketMain";
	}
	
}