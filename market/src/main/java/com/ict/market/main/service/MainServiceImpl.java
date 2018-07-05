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

	
	/* ********** �α��� ���� ��� ********** */
	@Override
	public String login(String id, String password, HttpSession session, HttpServletRequest req) {
		MarketMemberDto dbMember = mainDao.login(id);
		String view;
		
		if(dbMember == null) {
			logger.info("LOGIN - ȸ���� ã�� �� ����");
			view = "idFail";
		} else if(!dbMember.getPassword().equals(password)) {
			logger.info("LOGIN - ��й�ȣ�� Ʋ��");
			view = "passwordFail";
		} else {
			view = "redirect:/";
			session.invalidate();
			session = req.getSession();
			session.setAttribute("id", id);
			session.setAttribute("adminChk", dbMember.getAdminchk());
		}
		
//		���� ���� ������� �ذ��� �α��� ���
//		���� ���ǿ����� ����, ���ο� ������ ���� ���� ���̵� �ɴ´�.
		
		return view;
	}

	
	@Override
	public void register(MarketMemberDto member) {
		logger.info("REGISTER - ȸ������ ���" + member);
		mainDao.register(member);
	}
	/* ********** �α��� ���� ��� ********** */
	
	
	
}