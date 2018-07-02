package com.ict.market.favorite.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.market.favorite.dto.CommentDto;
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

	@Override
	public void updateArticle(FavoriteDto helpArticle) {
		
		sqlsession.update(nameSpace+".updateArticle",helpArticle);
		
	}

	@Override
	public void insertComment(CommentDto comment) {
		sqlsession.insert(nameSpace+".insertComment",comment);
	}

	@Override
	public List<CommentDto> getComments(int articleNum, int commentRow) {
		HashMap<String,Integer> hm = new HashMap<>();
		hm.put("articleNum",articleNum);
		hm.put("commentRow",commentRow);
		System.out.println(sqlsession.selectList(nameSpace+".getComments",hm));
		return sqlsession.selectList(nameSpace+".getComments",hm);
	}

}