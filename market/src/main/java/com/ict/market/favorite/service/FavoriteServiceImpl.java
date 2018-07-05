package com.ict.market.favorite.service;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ict.market.favorite.common.NoticePage;
import com.ict.market.favorite.common.Page;
import com.ict.market.favorite.dao.FavoriteDao;
import com.ict.market.favorite.dto.CommentDto;
import com.ict.market.favorite.dto.FavoriteDto;
import com.ict.market.favorite.dto.NoticeDto;

@Service
public class FavoriteServiceImpl implements FavoriteService {
	@Autowired
	private FavoriteDao favoriteDao;
	
	@Autowired
	private NoticePage noticePage;

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

	@Override
	public void getUpdateArticle(String articleNum, int fileStatus, Model model) {
		
		model.addAttribute("helpArticle",favoriteDao.getUpdateArticle(articleNum));
		
	}

	@Override
	public void updateArticle(FavoriteDto helpArticle, Model model) {
		favoriteDao.updateArticle(helpArticle);
	}
	
	@Override
	public void delete(String articleNum) {
		favoriteDao.delete(articleNum);
	}
	
	@Override
	public void increaseHit(String articleNum,HttpSession session) {
		long update_time = 0;
		//세션에 저장된 게시물의 조회시간 검색
		if(session.getAttribute("update_time_"+articleNum)!=null) {
			update_time=(long)session.getAttribute("update_time_"+articleNum);
		}
		//현재시간
		long current_time=System.currentTimeMillis();
		//일정 시간이 경가된 후 조회수 증가 처리
		if(current_time-update_time>1*10000) {
			favoriteDao.increaseHit(articleNum);
			session.setAttribute("update_time_"+articleNum,current_time);
		}
		
	}

	/*comment관련 service*/
	@Override
	public void insertComment(CommentDto comment) {
		favoriteDao.insertComment(comment);
	}

	@Override
	public List<CommentDto> getComments(int articleNum, int commentRow,Model model) {
		model.addAttribute("commentList",favoriteDao.getComments(articleNum,commentRow));
		return favoriteDao.getComments(articleNum,commentRow);
	}

	@Override
	public void commentDelete(String commentNum) {
		favoriteDao.commentDelete(commentNum);
	}
	
	
	
	
	
	/* ********** 공지사항 게시판 기능 ********** */
	@Override
	public void noticeWrite(NoticeDto notice) {
		favoriteDao.noticeWrite(notice);
	}


	@Override
	public List<NoticeDto> noticeList(String pageNum, Model model) {
		int totalCount = favoriteDao.getNoticeCount();
		HashMap<String,String> pagingMap = noticePage.noticePaging(Integer.parseInt(pageNum),totalCount,pageSize,pageBlock);
		model.addAttribute("pageCode",pagingMap.get("pageCode"));
		model.addAttribute("noticeList",favoriteDao.noticeList(pagingMap));
		model.addAttribute("totalCount",totalCount);
		return favoriteDao.noticeList(pagingMap);
	}

	@Override
	public void noticeContent(int articleNum, Model model) {
		model.addAttribute("noticeContent", favoriteDao.noticeContent(articleNum));
		
	}

	@Override
	public void noticeDelete(int articleNum) {
		favoriteDao.noticeDelete(articleNum);
	}

	@Override
	public void noticeGetUpdate(int articleNum, Model model) {
		model.addAttribute("noticeContent",favoriteDao.noticeGetUpdate(articleNum));
	}

	@Override
	public void noticePostUpdate(NoticeDto notice, Model model) {
		favoriteDao.noticePostUpdate(notice);
	}
	/* ********** 공지사항 게시판 기능 ********** */
}