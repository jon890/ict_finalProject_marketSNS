package com.ict.market.favorite.dao;

import java.util.HashMap;
import java.util.List;

import com.ict.market.favorite.dto.CommentDto;
import com.ict.market.favorite.dto.FavoriteDto;
import com.ict.market.favorite.dto.NoticeDto;

public interface FavoriteDao {
	public void write(FavoriteDto helpArticle);
	public int getTotalCount();
	public List<FavoriteDto>help(HashMap<String,String> pagingMap);
	public FavoriteDto content(String articleNum);
	public FavoriteDto getUpdateArticle(String articleNum);
	public void updateArticle(FavoriteDto helpArticle);
	public void insertComment(CommentDto comment);
	public List<CommentDto>getComments(int articleNum,int commentRow);
	public void delete(String articleNum);
	public void increaseHit(String articleNum);
	public void commentDelete(String commentNum);
	
	
	
	/* ********** 공지사항 게시판 기능 ********** */
	public void noticeWrite(NoticeDto notice);
	public List<NoticeDto> noticeList(HashMap<String,String> pagingMap);
	public int getNoticeCount();
	public NoticeDto noticeContent(int articleNum);
	public void noticeDelete(int articleNum);
	public NoticeDto noticeGetUpdate(int articleNum);
	public void noticePostUpdate(NoticeDto notice);
	/* ********** 공지사항 게시판 기능 ********** */
}