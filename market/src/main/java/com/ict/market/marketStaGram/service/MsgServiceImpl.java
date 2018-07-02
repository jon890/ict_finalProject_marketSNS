package com.ict.market.marketStaGram.service;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.ict.market.marketStaGram.dao.MsgDao;
import com.ict.market.marketStaGram.dto.ImgDto;
import com.ict.market.marketStaGram.dto.MsgCommentDto;
import com.ict.market.marketStaGram.dto.SnsArticleDto;

@Service
public class MsgServiceImpl implements MsgService {

	@Autowired
	MsgDao msgDao;
	
	
	/* ********** 메인 페이지 로딩시 글 가져오기 기능 ********** */
	@Override
	public void list(Model model) {
		model.addAttribute("imgList", msgDao.list());	
	}
	/* ********** 메인 페이지 로딩시 글 가져오기 기능 ********** */
	

	
	
	/* ********** 게시판 글쓰기 기능 ********** */
	@Override
	public void write(SnsArticleDto snsArticle, List<MultipartFile> imgname, String uploadDir) {
		msgDao.write(snsArticle);
		imgUpload(imgname, snsArticle.getArticleNum(), uploadDir);
	}
	
	public void imgUpload(List<MultipartFile> imgname, int articleNum, String uploadDir) {
		ImgDto imgDto = null;
		
		for(MultipartFile img : imgname) {
			if( !img.isEmpty() ) {
				String storedImgName = save(img, uploadDir);
				
				imgDto = new ImgDto();
				imgDto.setArticleNum(articleNum);
				imgDto.setStoredImgName(storedImgName);
				msgDao.insertImg(imgDto);
			}
		}
	}
	
	public String save(MultipartFile img, String uploadDir) {
		String storedImgName = UUID.randomUUID().toString() + "_" + img.getOriginalFilename();
		try {
			img.transferTo(new File(uploadDir + storedImgName));
		} catch(Exception e) {
			
		}
		return storedImgName;
	}
	/* ********** 게시판 글쓰기 기능 ********** */



	
	
	/* ********** 게시판 글 읽기 기능 ********** */
	@Override
	public void read(int articleNum, Model model) {
		model.addAttribute("snsArticle", msgDao.read(articleNum));
		model.addAttribute("imgs", msgDao.getImgList(articleNum));
	}
	/* ********** 게시판 글 읽기 기능 ********** */




	@Override
	public void commentWrite(MsgCommentDto comment) {
		// TODO Auto-generated method stub
		
	}
	
	
}