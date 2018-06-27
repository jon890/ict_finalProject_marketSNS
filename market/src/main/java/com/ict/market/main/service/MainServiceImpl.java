package com.ict.market.main.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.market.main.dao.MainDao;

@Service
public class MainServiceImpl implements MainService {
	
	private static final Logger logger = LoggerFactory.getLogger(MainServiceImpl.class);
	
	@Autowired
	private MainDao mainDao;

	@Override
	public String login(String id, String password, HttpSession session, HttpServletRequest req) {
		String dbPassword = mainDao.login(id);
		String view;
		
		if(dbPassword == null) {
			logger.info("LOGIN - 회원을 찾을 수 없음");
			view = "idFail";
		} else if(!dbPassword.equals(password)) {
			logger.info("LOGIN - 비밀번호가 틀림");
			view = "passwordFail";
		} else {
			view = "index";
			session.invalidate();
			session = req.getSession();
			session.setAttribute("id", id);
		}
		
//		세션 고정 취약점을 해결한 로그인 방법
//		기존 세션연결을 끊고, 새로운 새션을 받은 다음 아이디를 심는다.
		
		return view;
	}
	
}