package com.ict.market.marketStaGram.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class msgController {
	
	
	private static final Logger logger = LoggerFactory.getLogger(msgController.class);
	
	@RequestMapping(value="/main.msg" , method = RequestMethod.GET)
	public String moveMain() {
		logger.info("MARKETSTAGRAM - 메인 페이지 이동");
		return "main";
	}
	
}