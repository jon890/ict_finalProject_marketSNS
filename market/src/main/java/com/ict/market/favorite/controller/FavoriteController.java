package com.ict.market.favorite.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
		logger.info("Favorite - ������ �̵�");
		return "favorite";
	}
	
	@RequestMapping(value="/hotPlace.favorite")
	public String hotPlace() {
		logger.info("HotPlace - ������ �̵�");
		return "hotPlace";
	}
	
	@RequestMapping(value="/festival.favorite")
	public String festival() {
		logger.info("festival - ������ �̵�");
		return "festival";
	}
	
	@RequestMapping(value="/nightMarket.favorite")
	public String nightMarket() {
		logger.info("nightMarket - ������ �̵�");
		return "nightMarket";
	}
	
	
	/*�� ��� ��� ������*/
	@RequestMapping(value="/help.favorite")
	public String help(@ModelAttribute("pageNum") String pageNum, Model model) {
		logger.info("help - ������ �̵�");
		logger.info(pageNum);
		favoriteService.help(pageNum,model);
		return "help";
	}
	
	@RequestMapping(value="/helpForm.favorite",method=RequestMethod.GET)
	public String helpForm(FavoriteDto helpArticle,HttpSession session) {
		return "helpForm";
	}
	/*�� ���涧 ����Ʈ ������� �Է�*/
	@Transactional
	@RequestMapping(value="/write.favorite",method=RequestMethod.POST)
	public String writeForm(FavoriteDto helpArticle,HttpSession session) {
		logger.info("write - ������ �̵�");
		helpArticle.setId((String)session.getAttribute("id"));
		favoriteService.write(helpArticle);
		return "redirect:/help.favorite?pageNum=1";
	}
	/*�Խù� ��ȸ*/
	@Transactional
	@RequestMapping(value="/content.favorite")
	public String content(@RequestParam("articleNum")String articleNum,
			@ModelAttribute("pageNum")String pageNum,
			@RequestParam("fileStatus")int fileStatus,Model model,HttpSession session) {
		favoriteService.increaseHit(articleNum,session);
		favoriteService.content(articleNum,fileStatus,model);
		return "content";
	}

	@RequestMapping(value="/update.favorite",method=RequestMethod.GET)
	public String getUpdateArticle(@ModelAttribute("articleNum")String articleNum,
		@ModelAttribute("fileStatus")int fileStatus,
		@ModelAttribute("pageNum")String pageNum,Model model) {
		logger.info("update - ������ �̵�");
		favoriteService.getUpdateArticle(articleNum,fileStatus,model);
		return null;
	}
	
	@RequestMapping(value="/update.favorite",method=RequestMethod.POST)
	public String updateArticle(@RequestParam String pageNum,FavoriteDto helpArticle,
			Model model,@RequestParam int fileStatus) {
		
		logger.info("update���������� - ������ �̵�");
		logger.info("update���������� - pageNum "+pageNum);
		favoriteService.updateArticle(helpArticle,model);
		return "redirect:/content.favorite?articleNum="+helpArticle.getArticleNum()+"&pageNum="+pageNum+"&fileStatus="+fileStatus;
	}
	@RequestMapping(value="/delete.favorite")
	public String delete(@RequestParam String articleNum,@RequestParam String pageNum) {
		
		favoriteService.delete(articleNum);
		
		return "redirect:/help.favorite?pageNum="+pageNum;
	}
	/*������ �ȿ� ��� �ޱ� ���*/ 
	@Transactional
	@RequestMapping(value="/commentWrite.favorite")
	@ResponseBody
	public HashMap<String,Object> commentWrite(CommentDto comment,HttpSession session,Model model) {
		logger.info("��������� - ������ ����");
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
		logger.info("���������� - ���� ");
		logger.info(commentNum);
		favoriteService.commentDelete(commentNum);
		return null;
	}
	
	
	
	/* ********** �������� �Խ��� ��� ********** */
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
	/* ********** �������� �Խ��� ��� ********** */
	
}