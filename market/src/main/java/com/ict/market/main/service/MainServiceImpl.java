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
			logger.info("LOGIN - ȸ���� ã�� �� ����");
			view = "idFail";
		} else if(!dbPassword.equals(password)) {
			logger.info("LOGIN - ��й�ȣ�� Ʋ��");
			view = "passwordFail";
		} else {
			view = "index";
			session.invalidate();
			session = req.getSession();
			session.setAttribute("id", id);
		}
		
//		���� ���� ������� �ذ��� �α��� ���
//		���� ���ǿ����� ����, ���ο� ������ ���� ���� ���̵� �ɴ´�.
		
		return view;
	}
	
}