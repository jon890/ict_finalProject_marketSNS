package com.ict.market.main.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ict.market.main.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;
	
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
//	@RequestMapping(value="/")
//	public String moveIndex() {
//		logger.info("Index - 페이지 이동");
//		return "index";
//	}


	@RequestMapping(value="/login.main" , method = RequestMethod.GET)
	public String moveLogin() {
		logger.info("LOGIN - 페이지 이동");
		return "/common/login";
	}
	
	
	@RequestMapping(value="/login.main" , method = RequestMethod.POST)
	public String login(@RequestParam String id, @RequestParam String password) {
		logger.info("LOGIN - Submit버튼 확인");
		logger.info("LOGIN - ID 출력 // " + id);
		logger.info("LOGIN - PASSWORD 출력 //" + password);
		
		mainService.login(id, password);
		
		return "index";
	}
	
}
