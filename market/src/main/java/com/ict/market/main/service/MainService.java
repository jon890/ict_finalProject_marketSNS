package com.ict.market.main.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface MainService {
	
	public String login(String id, String password, HttpSession session, HttpServletRequest req);
}