package com.ict.market.main.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.market.main.dao.MainDao;
import com.ict.market.main.dto.MarketMemberDto;

@Service
public class MainServiceImpl implements MainService {
	
	private static final Logger logger = LoggerFactory.getLogger(MainServiceImpl.class);
	
	@Autowired
	private MainDao mainDao;

	
	/* ********** 로그인 관련 기능 ********** */
	@Override
	public String login(String id, String password, HttpSession session, HttpServletRequest req) {
		MarketMemberDto dbMember = mainDao.login(id);
		String view;
		
		if(dbMember == null) {
			logger.info("LOGIN - 회원을 찾을 수 없음");
			view = "idFail";
		} else if(!dbMember.getPassword().equals(password)) {
			logger.info("LOGIN - 비밀번호가 틀림");
			view = "passwordFail";
		} else {
			view = "redirect:/";
			session.invalidate();
			session = req.getSession();
			session.setAttribute("id", id);
			session.setAttribute("adminChk", dbMember.getAdminchk());
		}
		
//		세션 고정 취약점을 해결한 로그인 방법
//		기존 세션연결을 끊고, 새로운 새션을 받은 다음 아이디를 심는다.
		
		return view;
	}

	
	@Override
	public void register(MarketMemberDto member) {
		logger.info("REGISTER - 회원정보 출력" + member);
		mainDao.register(member);
	}
	/* ********** 로그인 관련 기능 ********** */
	
	
	
}