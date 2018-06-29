package com.ict.market.favorite.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ict.market.favorite.dto.FavoriteDto;
import com.ict.market.favorite.service.FavoriteService;

@Controller
public class FavoriteController {
	
	
	private static final Logger logger = LoggerFactory.getLogger(FavoriteController.class);
	@Autowired
	private FavoriteService favoriteService;
	
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
	
	@RequestMapping(value="/help.favorite")
	public String help() {
		return "help";
	}
	
	@RequestMapping(value="/helpForm.favorite",method=RequestMethod.GET)
	public String helpForm(FavoriteDto helpArticle,HttpSession session) {
		helpArticle.setId((String)session.getAttribute("id"));
		return "helpForm";
	}
	
	@RequestMapping(value="/helpForm.favorite",method=RequestMethod.POST)
	public String writeForm(FavoriteDto helpArticle,HttpSession session) {
		favoriteService.write(helpArticle);
		return "redirect://help.favorite";
	}

	
}
