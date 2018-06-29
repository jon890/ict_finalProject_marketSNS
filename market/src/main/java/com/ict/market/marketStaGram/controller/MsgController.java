package com.ict.market.marketStaGram.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.ict.market.marketStaGram.dto.SnsArticleDto;
import com.ict.market.marketStaGram.service.MsgService;

@Controller
public class MsgController {
	
	@Autowired
	MsgService msgService;
	
	private static final Logger logger = LoggerFactory.getLogger(MsgController.class);
	
	@RequestMapping(value="/main.msg" , method = RequestMethod.GET)
	public String marketStaGram(Model model) {
		logger.info("MARKETSTAGRAM - ���� ������ �̵�");
		
	    
		msgService.list(model);
		return "marketStaGram";	
	}
	
	
	@RequestMapping(value="/write.msg" , method = RequestMethod.POST)
	public String write(SnsArticleDto snsArticle,
						@RequestPart("imgname") List<MultipartFile> imgname,
						HttpServletRequest req) {
		logger.info("MARKETSTAGRAM - �Խù� SUBMIT");
		logger.info("MARKETSTAGRAM - �Խù� ���� Ȯ�� " + snsArticle);
		logger.info("MARKETSTAGRAM - �Խù� ���� Ȯ�� " + imgname);
		
		/* ���� ���ε� ��� */
	    String uploadDir = req.getSession().getServletContext().getRealPath("/") + "resources/uploadImgs/";
	    
		msgService.write(snsArticle, imgname, uploadDir);
		
		return "redirect:/main.msg";
	}
	
}