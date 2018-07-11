package com.ict.market.main.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	/* ********** ������������ ��������, ������ �� 4���� �������� ��� ********** */
	@RequestMapping(value="/")
	public String indexArticle(Model model) {
		mainService.indexArticle(model);
		return "index";
	}
	/* ********** ������������ ��������, ������ �� 4���� �������� ��� ********** */
	
	
	
    /* ********** �α��� ���� ��� ********** */
	@RequestMapping(value="/login.main" , method = RequestMethod.GET)
	public String moveLogin(HttpServletRequest req) {
		HttpSession session = req.getSession();
		if( req.getHeader("referer") == null || req.getHeader("referer").equals("http://localhost:8100/market/register.main") ){
			session.setAttribute("referer", "http://localhost:8100/market/");
		} else {
			session.setAttribute("referer", req.getHeader("referer"));
		}
		return "/common/login";
	}
		
	@RequestMapping(value="/login.main" , method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, String> login(@RequestParam String id, 
										 @RequestParam String password, 
										 HttpSession session,
										 HttpServletRequest req) {
		return mainService.login(id, password, session, req);
	}
	
	@RequestMapping(value="/loginWithKakao.main" , method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, String> loginWithKakao(@RequestParam String id, 
											 	  @RequestParam String nickName,
											 	  @RequestParam String profileImg,
												  HttpSession session,
												  HttpServletRequest req) {
		return mainService.loginWithKakao(id, nickName, profileImg, session, req);
	}
	
	@RequestMapping(value="/logout.main" , method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value="/register.main" , method = RequestMethod.GET)
	public String moveRegister() {
		return "/common/register";
	}
	
	@RequestMapping(value="/register.main" , method = RequestMethod.POST)
	public String register(MarketMemberDto member) {
		mainService.register(member);
		return "index";
	}
	/* ********** �α��� ���� ��� ********** */

	
	/* ********** ���̵� �ߺ� üũ ********** */
	@ResponseBody
	@RequestMapping(value="/registerIdCheck.main")
	public String registerIdCheck(@RequestParam String id){
		return mainService.registerIdCheck(id);
	}
	/* ********** ���̵� �ߺ� üũ ********** */
}