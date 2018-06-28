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
		logger.info("MARKETSTAGRAM - ���� ������ �̵�");
		return "marketStaGram";
	}
	
	
	@RequestMapping(value="/write.msg" , method = RequestMethod.POST)
	public String write(SnsArticleDto snsArticle) {
		logger.info("MARKETSTAGRAM - �Խù� SUBMIT");
		logger.info("MARKETSTAGRAM - �Խù� ���� Ȯ�� " + snsArticle);
		return "marketStaGram";
	}
	
}