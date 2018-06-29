package com.ict.market.favorite.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FavoriteController {
	
	
	private static final Logger logger = LoggerFactory.getLogger(FavoriteController.class);

	@RequestMapping(value="/favorite.favorite")
	public String main() {
		logger.info("Favorite - 페이지 이동");
		return "favorite";
	}
	
	@RequestMapping(value="/notice.favorite")
	public String notice() {
		logger.info("Notice - 페이지 이동");
		return "notice";
	}
	
}
