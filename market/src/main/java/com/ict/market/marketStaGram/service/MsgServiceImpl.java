package com.ict.market.marketStaGram.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ict.market.marketStaGram.dao.MsgDao;
import com.ict.market.marketStaGram.dto.SnsArticleDto;

@Service
public class MsgServiceImpl implements MsgService {
	
	@Autowired
	MsgDao msgDao;

	@Override
	public void write(SnsArticleDto snsArticle, List<MultipartFile> imgname) {
		msgDao.write(snsArticle);
	}
}