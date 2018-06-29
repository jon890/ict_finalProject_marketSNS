package com.ict.market.favorite.service;

import org.springframework.stereotype.Service;

import com.ict.market.favorite.dao.FavoriteDao;
import com.ict.market.favorite.dto.FavoriteDto;

@Service
public class FavoriteServiceImpl implements FavoriteService {
	private FavoriteDao favoriteDao;

	@Override
	public void write(FavoriteDto helpArticle) {
		favoriteDao.write(helpArticle);
	}
	
	

}
