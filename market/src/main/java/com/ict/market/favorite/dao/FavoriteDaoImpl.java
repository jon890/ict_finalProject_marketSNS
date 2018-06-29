package com.ict.market.favorite.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.market.favorite.dto.FavoriteDto;

@Repository
public class FavoriteDaoImpl implements FavoriteDao {
	@Autowired
	private SqlSessionTemplate sqlsession;
	private final String nameSpace = "com.ict.market.favorite.dao.FavoriteDao";
	
	@Override
	public void write(FavoriteDto helpArticle) {
		sqlsession.insert(nameSpace+".write",helpArticle);
	}
	
	
	
}
