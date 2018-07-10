package com.ict.market.favorite.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ict.market.favorite.dto.CommentDto;
import com.ict.market.favorite.dto.FavoriteDto;
import com.ict.market.favorite.dto.NoticeDto;
import com.ict.market.favorite.service.FavoriteService;

@Controller
public class FavoriteController {
	
	
	private static final Logger logger = LoggerFactory.getLogger(FavoriteController.class);
	@Autowired
	private FavoriteService favoriteService;
	
	
	
	
	@RequestMapping(value="/favorite.favorite")
	public String main() {
		logger.info("Favorite - 페이지 이동");
		return "favorite";
	}
	
	@RequestMapping(value="/hotPlace.favorite")
	public String hotPlace() {
		logger.info("HotPlace - 페이지 이동");
		return "hotPlace";
	}
	
	@RequestMapping(value="/festival.favorite")
	public String festival() {
		logger.info("festival - 페이지 이동");
		return "festival";
	}
	
	@RequestMapping(value="/nightMarket.favorite")
	public String nightMarket() {
		logger.info("nightMarket - 페이지 이동");
		return "nightMarket";
	}
	
	
	/*글 목록 출력 페이지*/
	@RequestMapping(value="/help.favorite")
	public String help(@ModelAttribute("pageNum") String pageNum, Model model) {
		logger.info("help - 페이지 이동");
		logger.info(pageNum);
		favoriteService.help(pageNum,model);
		return "help";
	}
	
	@RequestMapping(value="/helpForm.favorite",method=RequestMethod.GET)
	public String helpForm(FavoriteDto helpArticle,HttpSession session) {
		return "helpForm";
	}
	
	/*글 남길때 포스트 방식으로 입력*/
	@Transactional
	@RequestMapping(value="/write.favorite",method=RequestMethod.POST)
	public String writeForm(FavoriteDto helpArticle,HttpSession session
			,@RequestPart("fname")List<MultipartFile> fname,HttpServletRequest req) {
		logger.info("write - 페이지 이동");
		helpArticle.setId((String)session.getAttribute("id"));
		
		/* 파일 업로드 경로 */
	    String uploadDir = req.getSession().getServletContext().getRealPath("/") + "resources/uploadFiles/";
		logger.info(uploadDir);
	    favoriteService.write(helpArticle,fname,uploadDir);
		return "redirect:/help.favorite?pageNum=1";
	}
	
	/*게시물 조회*/
	@Transactional
	@RequestMapping(value="/content.favorite")
	public String content(@RequestParam("articleNum")String articleNum,
			@ModelAttribute("pageNum")String pageNum,
			@RequestParam("fileStatus")int fileStatus,Model model,HttpSession session) {
		String id = (String)session.getAttribute("id");
		session.setAttribute("id",id);
		favoriteService.increaseHit(articleNum,session);
		favoriteService.content(articleNum,fileStatus,model);
		return "content";
	}

	@RequestMapping(value="/update.favorite",method=RequestMethod.GET)
	public String getUpdateArticle(@ModelAttribute("articleNum")String articleNum,
		@ModelAttribute("fileStatus")int fileStatus,
		@ModelAttribute("pageNum")String pageNum,Model model) {
		logger.info("update - 페이지 이동");
		favoriteService.getUpdateArticle(articleNum,fileStatus,model);
		return null;
	}
	
	@RequestMapping(value="/update.favorite",method=RequestMethod.POST)
	public String updateArticle(@RequestParam String pageNum,FavoriteDto helpArticle,
			Model model,@RequestParam int fileStatus) {
		
		logger.info("update저장페이지 - 페이지 이동");
		logger.info("update저장페이지 - pageNum "+pageNum);
		favoriteService.updateArticle(helpArticle,model);
		return "redirect:/content.favorite?articleNum="+helpArticle.getArticleNum()+"&pageNum="+pageNum+"&fileStatus="+fileStatus;
	}
	
	@RequestMapping(value="/delete.favorite")
	public String delete(@RequestParam String articleNum,@RequestParam String pageNum,HttpServletRequest req) {
		String uploadDir = req.getSession().getServletContext().getRealPath("/") + "resources/uploadFiles/";
		favoriteService.delete(articleNum,uploadDir);
		
		return "redirect:/help.favorite?pageNum="+pageNum;
	}
	
	/*고객센터 안에 답글 달기 기능*/ 
	@Transactional
	@RequestMapping(value="/commentWrite.favorite")
	@ResponseBody
	public HashMap<String,Object> commentWrite(CommentDto comment,HttpSession session,Model model) {
		logger.info("댓글페이지 - 페이지 접근");
		comment.setId((String)session.getAttribute("id"));
		favoriteService.insertComment(comment);
		List<CommentDto> commentList = favoriteService.getComments(comment.getArticleNum(),10,model);
		HashMap<String,Object> hm = new HashMap<>();
		hm.put("result",1);
		hm.put("commentList",commentList);
		return hm;
	}
	
	@RequestMapping(value="/commentRead.favorite")
	@ResponseBody
	public List<CommentDto> commentRead(@RequestParam("articleNum") int articleNum,
			@RequestParam("commentRow") int commentRow,Model model){
		System.out.println(articleNum);
		System.out.println(commentRow);
		return favoriteService.getComments(articleNum,commentRow,model);
	}
	
	@RequestMapping(value="/commentDelete.favorite")
	@ResponseBody
	public String commentDelete(@RequestParam("commentNum") String commentNum) {
		logger.info("삭제페이지 - 접근 ");
		logger.info(commentNum);
		favoriteService.commentDelete(commentNum);
		return null;
	}
	
	@RequestMapping(value="/download.favorite")
	@ResponseBody
	public FileSystemResource download(HttpServletResponse resp,
									   @RequestParam String originFname,
									   @RequestParam String storedFname,
									   @RequestParam int fileLength,
									   HttpServletRequest req) {
		String uploadDir = req.getSession().getServletContext().getRealPath("/") + "resources/uploadFiles/";
		return favoriteService.download(resp,storedFname,originFname,fileLength,uploadDir);
	}
	
	/* ********** 공지사항 게시판 기능 ********** */
	@RequestMapping(value="/notice.favorite")
	public String notice(@ModelAttribute("pageNum") String pageNum, Model model) {
		favoriteService.noticeList(pageNum, model);
		return "notice";
	}
	
	@RequestMapping(value="/noticeForm.favorite")
	public String noticeForm() {
		return "noticeForm";
	}
	
	@RequestMapping(value="/noticeWrite.favorite")
	public String noticeWrite(NoticeDto notice, HttpSession session) {
		notice.setId((String)session.getAttribute("id"));
		favoriteService.noticeWrite(notice);				
		return "redirect:/notice.favorite?pageNum=1";
	}
	
	@RequestMapping(value="/noticeContent.favorite")
	public String noticeContent(@RequestParam int articleNum,@ModelAttribute("pageNum") String pageNum, Model model) {
		favoriteService.noticeContent(articleNum, model);
		return "noticeContent";
	}
	
	@RequestMapping(value="/noticeDelete.favorite")
	public String noticeDelete(@RequestParam int articleNum,@RequestParam String pageNum) {
		favoriteService.noticeDelete(articleNum);
		return "redirect:/notice.favorite?pageNum="+pageNum;
	}
	
	@RequestMapping(value="/noticeUpdate.favorite", method=RequestMethod.GET)
	public String noticeGetUpdate(@RequestParam int articleNum, @ModelAttribute("pageNum") String pageNum,Model model) {
		favoriteService.noticeGetUpdate(articleNum,model);
		return "noticeUpdate";
	}
	
	@RequestMapping(value="/noticeUpdate.favorite", method=RequestMethod.POST)
	public String noticePostUpdate(NoticeDto notice, @RequestParam String pageNum, Model model) {
		favoriteService.noticePostUpdate(notice, model);
		return "redirect:/noticeContent.favorite?articleNum="+String.valueOf(notice.getArticleNum())+"&pageNum="+pageNum;
	}
	/* ********** 공지사항 게시판 기능 ********** */
	
}