package com.ict.market.main.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.market.main.dao.MainDao;
import com.ict.market.main.dto.MarketMemberDto;

@Service
public class MainServiceImpl implements MainService {
	
	@Autowired
	private MainDao mainDao;
	
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
	public void loginWithKakao(String id, String nickName, String profileImg, HttpSession session,
			HttpServletRequest req) {
		session.invalidate();
		session = req.getSession();
		session.setAttribute("id", nickName);
		session.setAttribute("profileImg", profileImg);
		MarketMemberDto member = new MarketMemberDto();
		member.setId(nickName);
		member.setPassword(id);
		mainDao.registerKakao(member);
	}

	@Override
	public void register(MarketMemberDto member) {
		mainDao.register(member);
	}
	/* ********** 로그인 관련 기능 ********** */

	@Override
	public String registerIdCheck(String id) {
		String idCheck = mainDao.registerIdCheck(id);
		String result = null;
		if(idCheck != null) {
			result = "0";
		} else {
			result = "1";
		}
		return result;
	}

}