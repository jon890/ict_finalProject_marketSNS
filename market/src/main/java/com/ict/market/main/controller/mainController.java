package com.ict.market.main.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mainController {
	
	
	private static final Logger logger = LoggerFactory.getLogger(mainController.class);


	@RequestMapping(value="/login.main")
	public String login() {
		logger.info("LOGIN 페이지 이동");
		return "/common/login";
	}
	
}
