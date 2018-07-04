package com.ict.market.marketStaGram.dao;

import java.util.HashMap;
import java.util.List;

import com.ict.market.marketStaGram.dto.ImgDto;
import com.ict.market.marketStaGram.dto.LikeDto;
import com.ict.market.marketStaGram.dto.MsgCommentDto;
import com.ict.market.marketStaGram.dto.SnsArticleDto;

public interface MsgDao {
	
	/* ********** �ش��ϴ� �������� �´� �Խù� �������� ��� ********** */
	public List<ImgDto> list(HashMap<String, Integer> hm);
	/* ********** �ش��ϴ� �������� �´� �Խù� �������� ��� ********** */
	
	
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
	public void likeCancel(LikeDto like);
	public String likeChk(LikeDto like);
	public int getLikeNum(LikeDto like);
	/* ********** ���ƿ� ��� ********** */
	
}