package com.ict.market.favorite.service;

import java.util.List;

import org.springframework.ui.Model;

import com.ict.market.favorite.dto.CommentDto;
import com.ict.market.favorite.dto.FavoriteDto;

public interface FavoriteService {
	public void write(FavoriteDto helpArticle);
	public List<FavoriteDto> help(String pageNum,Model model);
	public void content(String articleNum,int fileStatus,Model model);
	public void getUpdateArticle(String articleNum,int fileStatus,Model model);
	public void updateArticle(FavoriteDto helpArticle,Model model);
	public void insertComment(CommentDto comment);
	public List<CommentDto> getComments(int articleNum, int commentRow);
}
