package com.ict.market.marketStaGram.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ict.market.marketStaGram.dto.SnsArticleDto;

@Controller
public class MsgController {
	
	
	private static final Logger logger = LoggerFactory.getLogger(MsgController.class);
	
	@RequestMapping(value="/main.msg" , method = RequestMethod.GET)
	public String marketStaGram() {
		logger.info("MARKETSTAGRAM - 메인 페이지 이동");
		return "marketStaGram";
	}
	
	
	@RequestMapping(value="/write.msg" , method = RequestMethod.POST)
	public String write(SnsArticleDto snsArticle) {
		logger.info("MARKETSTAGRAM - 게시물 SUBMIT");
		logger.info("MARKETSTAGRAM - 게시물 내용 확인 " + snsArticle);
		return "marketStaGram";
	}
	
}