package com.ict.market.favorite.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class favoriteController {
	
	
	private static final Logger logger = LoggerFactory.getLogger(favoriteController.class);


	@RequestMapping(value="/notice.favorite")
	public String login() {
		logger.info("공지사항 페이지 이동");
		return "notice";
	}
	
}
