package com.ict.market.favorite.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.ict.market.favorite.dto.CommentDto;
import com.ict.market.favorite.dto.FavoriteDto;
import com.ict.market.favorite.dto.NoticeDto;

public interface FavoriteService {
	public void write(FavoriteDto helpArticle);
	public List<FavoriteDto> help(String pageNum,Model model);
	public void content(String articleNum,int fileStatus,Model model);
	public void getUpdateArticle(String articleNum,int fileStatus,Model model);
	public void updateArticle(FavoriteDto helpArticle,Model model);
	public void insertComment(CommentDto comment);
	public List<CommentDto> getComments(int articleNum, int commentRow,Model model);
	public void delete(String articleNum);
	public void increaseHit(String articleNum,HttpSession session);
	public void commentDelete(String commentNum);
	
	
	
	/* ********** 공지사항 게시판 기능 ********** */
	public void noticeWrite(NoticeDto notice);
	public List<NoticeDto> noticeList(String pageNum, Model model);
	public void noticeContent(int articleNum, Model model);
	public void noticeDelete(int articleNum);
	public void noticeGetUpdate(int articleNum, Model model);
	public void noticePostUpdate(NoticeDto notice, Model model);
	/* ********** 공지사항 게시판 기능 ********** */
}