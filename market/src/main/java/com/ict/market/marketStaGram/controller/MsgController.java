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

import com.ict.market.marketStaGram.dto.ImgDto;
import com.ict.market.marketStaGram.dto.LikeDto;
import com.ict.market.marketStaGram.dto.MsgCommentDto;
import com.ict.market.marketStaGram.dto.SearchDto;
import com.ict.market.marketStaGram.dto.SnsArticleDto;
import com.ict.market.marketStaGram.service.MsgService;

@Controller
public class MsgController {
	
	@Autowired
	MsgService msgService;
	
	/* ********** ���� ������ �ε��� �� �������� ��� ********** */
	@RequestMapping(value = "/main.msg" , method = RequestMethod.GET)
	public String marketStaGram(Model model) {
		model.addAttribute("imgList", msgService.list(model, 1));
		return "marketStaGram";	
	}
	/* ********** ���� ������ �ε��� �� �������� ��� ********** */
	
	
	
	/* ********** ���� ��ũ���� ���� ������ �������� ��� ********** */
	@RequestMapping(value = "/list.msg" , method = RequestMethod.GET)
	@ResponseBody
	public List<ImgDto> list(@RequestParam int pageNum, Model model) {
		return msgService.list(model, pageNum);
	}
	/* ********** ���� ��ũ���� ���� ������ �������� ��� ********** */
	
	
	
	/* ********** �� ���� ��۰� ���ƿ� ���� ������ ��� ********** */
	@RequestMapping(value = "/getInfo.msg" , method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Integer> getInfo(int articleNum) {
		LikeDto like = new LikeDto();
		like.setArticleNum(articleNum);
		HashMap<String, Integer> hm = new HashMap<>();
		hm.put("likeNum", msgService.getLikeNum(like));
		hm.put("commentNum", msgService.getCommentNum(articleNum));
		return hm;
	}
	/* ********** �� ���� ��۰� ���ƿ� ���� ������ ��� ********** */
	
	
	
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
	@ResponseBody
	public HashMap<String, Integer> like(LikeDto like) {
		HashMap<String, Integer> hm = new HashMap<>();
		int sw = 0;
		// true -> ������ like�� ���� �����
		if( msgService.likeChk(like) ) {
			msgService.likeCancel(like);
		} else {
			// false -> like�� ó�� ���� �����
			msgService.like(like);
			sw = 1;
		}
		hm.put("likeNum", msgService.getLikeNum(like));
		// �̹��� ��ü�� ���� ����ġ ����
		hm.put("sw", sw);
		return hm;
	}
	
	@RequestMapping(value = "/likeChk.msg" , method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, Integer> likeChk(LikeDto like) {
		HashMap<String, Integer> hm = new HashMap<>();
		int sw = 0;
		// true -> ������ like�� ���� �����
		if( msgService.likeChk(like) ) {
			sw = 1;
		} 
		hm.put("likeNum", msgService.getLikeNum(like));
		// �̹��� ��ü�� ���� ����ġ ����
		hm.put("sw", sw);
		return hm;
	}
	/* ********** ���ƿ� ��� ********** */
	
	
	
	
	/* ********** �ؽ��±� �˻���� ********** */
	@RequestMapping(value = "/search.msg" , method = RequestMethod.GET)
	@ResponseBody
	public List<SearchDto> search(@RequestParam String keyword){
		if(keyword.charAt(0) == '#') {
			keyword = keyword.substring(1);
			System.out.println(keyword);
		}
		return msgService.search(keyword);
	}
	/* ********** �ؽ��±� �˻���� ********** */
	
}