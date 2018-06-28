package com.ict.market.marketStaGram.service;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.ict.market.marketStaGram.dto.SnsArticleDto;

public interface MsgService {

	public void write(SnsArticleDto snsArticle, List<MultipartFile> imgname, String uploadDir);
	public void list(Model model);
}