package com.ict.market.favorite.dao;

import java.util.HashMap;
import java.util.List;

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

	@Override
	public List<FavoriteDto> help(HashMap<String, String> pagingMap) {
	
		return sqlsession.selectList(nameSpace+".help",pagingMap);
	}

	@Override
	public int getTotalCount() {
	
		return sqlsession.selectOne(nameSpace+".getTotalCount");
	}

	@Override
	public FavoriteDto content(String articleNum) {
		
		return sqlsession.selectOne(nameSpace+".content",articleNum);
	}

	@Override
	public FavoriteDto getUpdateArticle(String articleNum) {
		
		return sqlsession.selectOne(nameSpace+".getUpdateArticle",articleNum);
	}
	
	
	
	
	
	
	
}
