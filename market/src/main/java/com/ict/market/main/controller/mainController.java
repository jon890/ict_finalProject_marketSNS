package com.ict.market.main.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mainController {
	
	
	private static final Logger logger = LoggerFactory.getLogger(mainController.class);

	@RequestMapping(value="/")
	public String welcome() {
		logger.info("INDEX PAGE");
		return "index";
	}
	
	@RequestMapping(value="/login.do")
	public String login() {
		return "/common/login";
	}
	
}
