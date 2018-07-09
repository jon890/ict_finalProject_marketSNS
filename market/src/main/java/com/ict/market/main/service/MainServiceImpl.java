package com.ict.market.main.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ict.market.main.controller.MainController;
import com.ict.market.main.dao.MainDao;
import com.ict.market.main.dto.MarketMemberDto;

@Service
public class MainServiceImpl implements MainService {
	
	@Autowired
	private MainDao mainDao;
	
	private static final Logger logger = LoggerFactory.getLogger(MainServiceImpl.class);
	
	/* ********** 로그인 관련 기능 ********** */
	@Override
	public String login(String id, String password, HttpSession session, HttpServletRequest req) {
		MarketMemberDto dbMember = mainDao.login(id);
		String result;
		
		if(dbMember == null) {
			result = "idError";
		} else if(!dbMember.getPassword().equals(password)) {
			result = "pwdError";
		} else {
			result = "success";
			session.invalidate();
			session = req.getSession();
			session.setAttribute("id", id);
			session.setAttribute("adminChk", dbMember.getAdminchk());
		}	
		return result;
	}
	
	@Override
	public String loginWithKakao(String id, String nickName, String profileImg, HttpSession session,
			HttpServletRequest req) {
		session.invalidate();
		session = req.getSession();
		session.setAttribute("id", nickName);
		session.setAttribute("profileImg", profileImg);
		System.out.println(profileImg);
		return null;
	}

	@Override
	public void register(MarketMemberDto member) {
		mainDao.register(member);
	}
	/* ********** 로그인 관련 기능 ********** */

	@Override
	public void mainHelp(Model model) {
		model.addAttribute("helpArticleList",mainDao.mainHelp());
		model.addAttribute("noticeArticleList",mainDao.mainNotice());
		System.out.println(mainDao.mainNotice());
	}	
	
	
	
}