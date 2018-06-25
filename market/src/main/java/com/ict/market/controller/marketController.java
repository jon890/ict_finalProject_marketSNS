package com.ict.market.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class marketController {
	
	
	private static final Logger logger = LoggerFactory.getLogger(marketController.class);

	@RequestMapping(value="/")
	public String main() {
		logger.info("¡¯¿‘");
		return "main";
	}
}
