package com.ict.market.favorite.dao;

import java.util.HashMap;
import java.util.List;

import com.ict.market.favorite.dto.FavoriteDto;

public interface FavoriteDao {
	public void write(FavoriteDto helpArticle);
	public int getTotalCount();
	public List<FavoriteDto>help(HashMap<String,String> pagingMap);
	public FavoriteDto content(String articleNum);
	public FavoriteDto getUpdateArticle(String articleNum);
}
