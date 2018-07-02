package com.ict.market.marketStaGram.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ict.market.marketStaGram.dto.MsgCommentDto;
import com.ict.market.marketStaGram.dto.SnsArticleDto;
import com.ict.market.marketStaGram.service.MsgService;

@Controller
public class MsgController {
	
	@Autowired
	MsgService msgService;
	
	private static final Logger logger = LoggerFactory.getLogger(MsgController.class);
	
	

	/* ********** 메인 페이지 로딩시 글 가져오기 기능 ********** */
	@RequestMapping(value = "/main.msg" , method = RequestMethod.GET)
	public String marketStaGram(Model model) {
		logger.info("MARKETSTAGRAM - 메인 페이지 이동"); 
		msgService.list(model);
		return "marketStaGram";	
	}
	/* ********** 메인 페이지 로딩시 글 가져오기 기능 ********** */
	
	
	
	/* ********** 게시판 글쓰기 기능 ********** */
	@RequestMapping(value = "/write.msg" , method = RequestMethod.POST)
	public String write(SnsArticleDto snsArticle,
						@RequestPart("imgname") List<MultipartFile> imgname,
						HttpServletRequest req) {
		logger.info("MARKETSTAGRAM - 게시물 SUBMIT");
		logger.info("MARKETSTAGRAM - 게시물 내용 확인 " + snsArticle);
		logger.info("MARKETSTAGRAM - 게시물 내용 확인 " + imgname);
		
		/* 파일 업로드 경로 */
	    String uploadDir = req.getSession().getServletContext().getRealPath("/") + "resources/uploadImgs/";
	    
		msgService.write(snsArticle, imgname, uploadDir);
		
		return "redirect:/main.msg";
	}
	/* ********** 게시판 글쓰기 기능 ********** */
	
	
	/* ********** 게시판 글 읽기 기능 ********** */
	@RequestMapping(value = "/read.msg" , method = RequestMethod.GET)
	public String read(@RequestParam int articleNum, Model model) {
		logger.info("MARKETSTAGRAM - 게시물 읽기 // 게시물 번호 확인 : " + articleNum);
		msgService.read(articleNum, model);
		return "msgContent";
	}
	/* ********** 게시판 글 읽기 기능 ********** */
	
	
	/* ********** 댓글 달기 기능 ********** */
	@RequestMapping(value = "/commentWrite.msg" , method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, Object> commentWrite(MsgCommentDto comment, HttpSession session) {
		logger.info("MARKETSTAGRAM - 댓글 달기 버튼 SUBMIT");
		
		comment.setId((String)session.getAttribute("id"));
		msgService.commentWrite(comment);
		List<MsgCommentDto> commentList = msgService.getComments(comment.getArticleNum(), 10);
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("result", 1);
		hm.put("commentList", commentList);
		return hm;
	}
	/* ********** 댓글 달기 기능 ********** */
	
	
	@RequestMapping(value = "/commentRead.msg")
	@ResponseBody
	public List<MsgCommentDto> commentRead(@RequestParam("articleNum") int articleNum,
										@RequestParam("commentRow") int commentRow){
		return msgService.getComments(articleNum, commentRow);	
	}
	

	/* ********** 좋아요 기능 ********** */
	@RequestMapping(value = "/like.msg" , method = RequestMethod.POST)
	public String like(@RequestParam int articleNum) {
		logger.info("MARKETSTAGRAM - 좋아요 버튼 클릭");
		return "msgContent";
	}
	/* ********** 좋아요 기능 ********** */
	
}