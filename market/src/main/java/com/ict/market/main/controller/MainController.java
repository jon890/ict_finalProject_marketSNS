package com.ict.market.main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ict.market.main.dto.MarketMemberDto;
import com.ict.market.main.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value="/")
	public String mainHelp(Model model) {
		logger.info("help진입");
		mainService.mainHelp(model);
		return "index";
	}
	
    /* ********** 로그인 관련 기능 ********** */
	@RequestMapping(value="/login.main" , method = RequestMethod.GET)
	public String moveLogin() {
		logger.info("LOGIN - 페이지 이동");
		return "/common/login";
	}
	
	@RequestMapping(value="/loginWithKakao.main" , method = RequestMethod.POST)
	@ResponseBody
	public String loginWithKakao(@RequestParam String id, 
								 @RequestParam String nickName,
								 @RequestParam String profileImg,
								 HttpSession session,
								 HttpServletRequest req) {
		mainService.loginWithKakao(id, nickName, profileImg, session, req);
		return "result";
	}
	
	
	@RequestMapping(value="/login.main" , method = RequestMethod.POST)
	@ResponseBody
	public String login(@RequestParam String id, 
						@RequestParam String password, 
						HttpSession session,
						HttpServletRequest req) {
		String result = mainService.login(id, password, session, req);
		return result;
	}
	
	@RequestMapping(value="/logout.main" , method = RequestMethod.GET)
	public String logout(HttpSession session) {
		logger.info("LOGOUT - 로그아웃 ");
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value="/register.main" , method = RequestMethod.GET)
	public String moveRegister() {
		logger.info("REGISTER - 페이지 이동 ");
		return "/common/register";
	}
	
	
	@RequestMapping(value="/register.main" , method = RequestMethod.POST)
	public String register(MarketMemberDto member) {
		logger.info("REGISTER - Submit 버튼 확인 ");
		
		mainService.register(member);
		return "index";
	}
	/* ********** 로그인 관련 기능 ********** */

	@ResponseBody
	@RequestMapping(value="/registerIdCheck.main")
	public String registerIdCheck(@RequestParam String id){
		return mainService.registerIdCheck(id);
	}	
}
