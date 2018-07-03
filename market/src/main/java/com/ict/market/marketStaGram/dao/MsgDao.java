package com.ict.market.marketStaGram.dao;

import java.util.List;

import com.ict.market.marketStaGram.dto.ImgDto;
import com.ict.market.marketStaGram.dto.LikeDto;
import com.ict.market.marketStaGram.dto.MsgCommentDto;
import com.ict.market.marketStaGram.dto.SnsArticleDto;

public interface MsgDao {
	
	/* ********** 메인 페이지 로딩시 글 가져오기 기능 ********** */
	public List<ImgDto> list();
	/* ********** 메인 페이지 로딩시 글 가져오기 기능 ********** */
	
	
	/* ********** 게시판 글쓰기 기능 ********** */
	public void write(SnsArticleDto snsArticle);
	public void insertImg(ImgDto imgDto);
	/* ********** 게시판 글쓰기 기능 ********** */
	
	
	/* ********** 게시판 글 읽기 기능 ********** */
	public SnsArticleDto read(int articleNum);
	public List<String> getImgList(int articleNum);
	/* ********** 게시판 글 읽기 기능 ********** */
	
	/* ********** 게시판 글 삭제 기능 ********** */
	public void delete(int articleNum);
	/* ********** 게시판 글 삭제기능 ********** */
	
	
	/* ********** 댓글 기능 ********** */
	public void commentWrite(MsgCommentDto comment);
	public List<MsgCommentDto> getComments(int articleNum, int commentRow);
	/* ********** 댓글 기능 ********** */
	
	
	/* ********** 좋아요 기능 ********** */
	public void like(LikeDto like);
	/* ********** 좋아요 기능 ********** */
	
}