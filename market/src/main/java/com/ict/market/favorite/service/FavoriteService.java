package com.ict.market.favorite.service;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.core.io.FileSystemResource;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.ict.market.favorite.dto.CommentDto;
import com.ict.market.favorite.dto.FavoriteDto;
import com.ict.market.favorite.dto.NoticeDto;

public interface FavoriteService {
	/* ********** 고객센터 - comment/fileUpload 게시판 기능 ********** */
	public void write(FavoriteDto helpArticle,List<MultipartFile> fname,String uploadDir);
	public List<FavoriteDto> help(String pageNum,Model model);
	public void content(String articleNum,int fileStatus,Model model);
	public void getUpdateArticle(String articleNum,int fileStatus,Model model);
	public void updateArticle(FavoriteDto helpArticle,Model model);
	public void insertComment(CommentDto comment);
	public List<CommentDto> getComments(int articleNum, int commentRow,Model model);
	public void delete(String articleNum,String uploadDir);
	public void increaseHit(String articleNum,HttpSession session);
	public void commentDelete(String commentNum);
	public FileSystemResource download(HttpServletResponse resp,String storedFname
			,String originFname,int fileLength,String uploadDir);
	public CommentDto commentgetUpdate(String commentNum);
	public void commentUpdate(CommentDto comment);
	
	/* ********** 공지사항 게시판 기능 ********** */
	public void noticeWrite(NoticeDto notice);
	public List<NoticeDto> noticeList(String pageNum, Model model);
	public void noticeContent(int articleNum, Model model);
	public void noticeDelete(int articleNum);
	public void noticeGetUpdate(int articleNum, Model model);
	public void noticePostUpdate(NoticeDto notice, Model model);
	/* ********** 공지사항 게시판 기능 ********** */
}