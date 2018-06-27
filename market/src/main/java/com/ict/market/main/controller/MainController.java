package com.ict.market.main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ict.market.main.dto.MarketMemberDto;
import com.ict.market.main.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;
	
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	

    /* ********** �α��� ���� ��� ********** */
	@RequestMapping(value="/login.main" , method = RequestMethod.GET)
	public String moveLogin() {
		logger.info("LOGIN - ������ �̵�");
		return "/common/login";
	}
	
	
	@RequestMapping(value="/login.main" , method = RequestMethod.POST)
	public String login(@RequestParam String id, 
						@RequestParam String password, 
						HttpSession session,
						HttpServletRequest req) {
		logger.info("LOGIN - Submit��ư Ȯ��");
		logger.info("LOGIN - ID ��� // " + id);
		logger.info("LOGIN - PASSWORD ��� // " + password);
		
		String view = mainService.login(id, password, session, req);
		
		return view;
	}
	
	@RequestMapping(value="/logout.main" , method = RequestMethod.GET)
	public String logout(HttpSession session) {
		logger.info("LOGOUT - �α׾ƿ� ");
		session.invalidate();
		return "index";
	}
	
	@RequestMapping(value="/register.main" , method = RequestMethod.GET)
	public String moveRegister() {
		logger.info("REGISTER - ������ �̵� ");
		return "/common/register";
	}
	
	
	@RequestMapping(value="/register.main" , method = RequestMethod.POST)
	public String register(MarketMemberDto member) {
		logger.info("REGISTER - Submit ��ư Ȯ�� ");
		
		mainService.register(member);
		return "index";
	}
	/* ********** �α��� ���� ��� ********** */
	
	
	
	
	
}
