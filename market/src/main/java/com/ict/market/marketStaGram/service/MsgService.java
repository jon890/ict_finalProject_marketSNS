package com.ict.market.marketStaGram.service;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.ict.market.marketStaGram.dto.ImgDto;
import com.ict.market.marketStaGram.dto.LikeDto;
import com.ict.market.marketStaGram.dto.MsgCommentDto;
import com.ict.market.marketStaGram.dto.SearchDto;
import com.ict.market.marketStaGram.dto.SnsArticleDto;

public interface MsgService {

	public List<ImgDto> list(Model model, int pageNum);
	
	
	public int getCommentNum(int articleNum);
	
	public void write(SnsArticleDto snsArticle, List<MultipartFile> imgname, String uploadDir);
	public void read(int articleNum, Model model);
	public void delete(int articleNum, String uploadDir);
	
	
	public void commentWrite(MsgCommentDto comment);
	public List<MsgCommentDto> getComments(int articleNum, int commentRow);
	
	
	public void like(LikeDto like);
	public void likeCancel(LikeDto like);
	public boolean likeChk(LikeDto like);
	public int getLikeNum(LikeDto like);
	
	
	public List<SearchDto> search(String keyword);
	public List<String> searchResult(String keyword);
	public List<ImgDto> searchArticle(Model model, List<Integer> articleNums);
}