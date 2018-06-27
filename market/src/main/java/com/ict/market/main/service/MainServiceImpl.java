package com.ict.market.main.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.market.main.dao.MainDao;

@Service
public class MainServiceImpl implements MainService {
	
	@Autowired
	private MainDao mainDao;

	@Override
	public void login(String id, String password) {
			
	}
	
}