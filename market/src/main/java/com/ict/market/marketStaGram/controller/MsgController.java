package com.ict.market.marketStaGram.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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


	/* ********** ���� ������ �ε��� �� �������� ��� ********** */
	@RequestMapping(value = "/main.msg" , method = RequestMethod.GET)
	public String marketStaGram(Model model) {
		msgService.list(model);
		return "marketStaGram";	
	}
	/* ********** ���� ������ �ε��� �� �������� ��� ********** */
	
	
	
	/* ********** �Խ��� �۾��� ��� ********** */
	@RequestMapping(value = "/write.msg" , method = RequestMethod.POST)
	public String write(SnsArticleDto snsArticle,
						@RequestPart("imgname") List<MultipartFile> imgname,
						HttpServletRequest req) {
		/* ���� ���ε� ��� */
	    String uploadDir = req.getSession().getServletContext().getRealPath("/") + "resources/uploadImgs/";
		msgService.write(snsArticle, imgname, uploadDir);
		return "redirect:/main.msg";
	}
	/* ********** �Խ��� �۾��� ��� ********** */
	
	
	/* ********** �Խ��� �� �б� ��� ********** */
	@RequestMapping(value = "/read.msg" , method = RequestMethod.GET)
	public String read(@RequestParam int articleNum, Model model) {
		msgService.read(articleNum, model);
		return "msgContent";
	}
	/* ********** �Խ��� �� �б� ��� ********** */
	
	
	/* ********** �Խ��� �� ���� ��� ********** */
	@RequestMapping(value = "/delete.msg" , method = RequestMethod.GET)
	public String delete(@RequestParam int articleNum, HttpServletRequest req) {
		/* ���� ���ε� ��� */
	    String uploadDir = req.getSession().getServletContext().getRealPath("/") + "resources/uploadImgs/";
		msgService.delete(articleNum, uploadDir);
		return "redirect:/main.msg";
	}
	/* ********** �Խ��� �� ���� ��� ********** */
	
	

	/* ********** ���  ��� ********** */
	@RequestMapping(value = "/commentWrite.msg" , method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, Object> commentWrite(MsgCommentDto comment, HttpSession session) {
		comment.setId((String)session.getAttribute("id"));
		msgService.commentWrite(comment);
		List<MsgCommentDto> commentList = msgService.getComments(comment.getArticleNum(), 10);
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("result", 1);
		hm.put("commentList", commentList);
		return hm;
	}

	
	@RequestMapping(value = "/commentRead.msg")
	@ResponseBody
	public List<MsgCommentDto> commentRead(@RequestParam("articleNum") int articleNum,
										   @RequestParam("commentRow") int commentRow){
		return msgService.getComments(articleNum, commentRow);	
	}
	/* ********** ��� ��� ********** */
	

	
	
	/* ********** ���ƿ� ��� ********** */
	@RequestMapping(value = "/like.msg" , method = RequestMethod.POST)
	public String like(@RequestParam int articleNum) {
		return "msgContent";
	}
	/* ********** ���ƿ� ��� ********** */
	
}