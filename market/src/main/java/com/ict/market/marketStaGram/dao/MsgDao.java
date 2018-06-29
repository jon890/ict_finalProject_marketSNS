package com.ict.market.marketStaGram.dao;

import java.util.List;

import com.ict.market.marketStaGram.dto.ImgDto;
import com.ict.market.marketStaGram.dto.SnsArticleDto;

public interface MsgDao {
	
	/* ********** ���� ������ �ε��� �� �������� ��� ********** */
	public List<String> list();
	/* ********** ���� ������ �ε��� �� �������� ��� ********** */
	
	
	/* ********** �Խ��� �۾��� ��� ********** */
	public void write(SnsArticleDto snsArticle);
	public void insertImg(ImgDto imgDto);
	/* ********** �Խ��� �۾��� ��� ********** */
	
	
	
}