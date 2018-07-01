package com.ict.market.favorite.service;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ict.market.favorite.common.Page;
import com.ict.market.favorite.dao.FavoriteDao;
import com.ict.market.favorite.dto.FavoriteDto;

@Service
public class FavoriteServiceImpl implements FavoriteService {
	@Autowired
	private FavoriteDao favoriteDao;

	@Autowired
	private Page page;
	
	@Resource(name="pageSize")
	private int pageSize;
	@Resource(name="pageBlock")
	private int pageBlock;
	
	@Override
	public void write(FavoriteDto helpArticle) {
		favoriteDao.write(helpArticle);
	}

	@Override
	public List<FavoriteDto> help(String pageNum, Model model) {
		int totalCount = favoriteDao.getTotalCount();
		HashMap<String,String> pagingMap = page.paging(Integer.parseInt(pageNum),totalCount,pageSize,pageBlock);
		model.addAttribute("pageCode",pagingMap.get("pageCode"));
		model.addAttribute("helpArticleList",favoriteDao.help(pagingMap));
		model.addAttribute("totalCount",totalCount);
		return favoriteDao.help(pagingMap);
	}

	@Override
	public void content(String articleNum, int fileStatus, Model model) {
		FavoriteDto helpArticle = favoriteDao.content(articleNum); 
		model.addAttribute("helpArticle",helpArticle);
	}
	
	
	

}
