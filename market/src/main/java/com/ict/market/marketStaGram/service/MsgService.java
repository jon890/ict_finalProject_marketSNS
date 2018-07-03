package com.ict.market.marketStaGram.service;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.ict.market.marketStaGram.dto.LikeDto;
import com.ict.market.marketStaGram.dto.MsgCommentDto;
import com.ict.market.marketStaGram.dto.SnsArticleDto;

public interface MsgService {

	public void list(Model model);
	
	
	public void write(SnsArticleDto snsArticle, List<MultipartFile> imgname, String uploadDir);
	public void read(int articleNum, Model model);
	public void delete(int articleNum, String uploadDir);
	
	
	public void commentWrite(MsgCommentDto comment);
	public List<MsgCommentDto> getComments(int articleNum, int commentRow);
	
	
	public void like(LikeDto like);
	public void likeCancel(LikeDto like);
	public boolean likeChk(LikeDto like);
	public int getLikeNum(LikeDto like);
	
}