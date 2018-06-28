package com.ict.market.marketStaGram.dao;

import com.ict.market.marketStaGram.dto.SnsArticleDto;

public interface MsgDao {
	public void write(SnsArticleDto snsArticle);
}