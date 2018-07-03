package com.ict.market.marketStaGram.dao;

import java.util.List;

import com.ict.market.marketStaGram.dto.ImgDto;
import com.ict.market.marketStaGram.dto.LikeDto;
import com.ict.market.marketStaGram.dto.MsgCommentDto;
import com.ict.market.marketStaGram.dto.SnsArticleDto;

public interface MsgDao {
	
	/* ********** ���� ������ �ε��� �� �������� ��� ********** */
	public List<ImgDto> list();
	/* ********** ���� ������ �ε��� �� �������� ��� ********** */
	
	
	/* ********** �Խ��� �۾��� ��� ********** */
	public void write(SnsArticleDto snsArticle);
	public void insertImg(ImgDto imgDto);
	/* ********** �Խ��� �۾��� ��� ********** */
	
	
	/* ********** �Խ��� �� �б� ��� ********** */
	public SnsArticleDto read(int articleNum);
	public List<String> getImgList(int articleNum);
	/* ********** �Խ��� �� �б� ��� ********** */
	
	/* ********** �Խ��� �� ���� ��� ********** */
	public void delete(int articleNum);
	/* ********** �Խ��� �� ������� ********** */
	
	
	/* ********** ��� ��� ********** */
	public void commentWrite(MsgCommentDto comment);
	public List<MsgCommentDto> getComments(int articleNum, int commentRow);
	/* ********** ��� ��� ********** */
	
	
	/* ********** ���ƿ� ��� ********** */
	public void like(LikeDto like);
	/* ********** ���ƿ� ��� ********** */
	
}