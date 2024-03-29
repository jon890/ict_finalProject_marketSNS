package com.ict.market.marketStaGram.service;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.ict.market.marketStaGram.dao.MsgDao;
import com.ict.market.marketStaGram.dto.ImgDto;
import com.ict.market.marketStaGram.dto.LikeDto;
import com.ict.market.marketStaGram.dto.MsgCommentDto;
import com.ict.market.marketStaGram.dto.SearchDto;
import com.ict.market.marketStaGram.dto.SnsArticleDto;

@Service
public class MsgServiceImpl implements MsgService {

	@Autowired
	MsgDao msgDao;
	
	
	/* ********** 해당하는 페이지에 맞는 게시물 가져오기 기능 ********** */
	@Override
	public List<ImgDto> list(Model model, int pageNum) {
		HashMap<String, Integer> hm = new HashMap<>();	
		hm.put("startRow", 1 + (pageNum-1) * 9);
		hm.put("endRow", pageNum * 9);
		return msgDao.list(hm);	
	}
	/* ********** 해당하는 페이지에 맞는 게시물 가져오기 기능 ********** */
	
	
	
	
	/* ********** 해당하는 글의 댓글개수 가져오기 기능 ********** */
	@Override
	public int getCommentNum(int articleNum) {
		return msgDao.getCommentNum(articleNum);
	}
	/* ********** 해당하는 글의 댓글개수 가져오기 기능 ********** */


	
	
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
	
	
	
	
	/* ********** 게시판 글 삭제 기능 ********** */
	@Override
	public void delete(int articleNum, String uploadDir) {
		// 글을 삭제 할 때 이미지를 스토리지에서 삭제
		List<String> imgNameList = msgDao.getImgList(articleNum);
		for( String imgName : imgNameList) {
			File storageImg = new File(uploadDir + imgName);
			System.out.println("파일삭제 이름 확인 = " + uploadDir + imgName);
			if( storageImg.exists() ) {
				storageImg.delete();
			}
		}
		// 게시물 삭제
		msgDao.delete(articleNum);
	}
	/* ********** 게시판 글 삭제 기능 ********** */


	

	/* ********** 댓글  기능 ********** */
	@Override
	public void commentWrite(MsgCommentDto comment) {
		msgDao.commentWrite(comment);
	}

	@Override
	public List<MsgCommentDto> getComments(int articleNum, int commentRow) {
		return msgDao.getComments(articleNum, commentRow);
	}
	/* ********** 댓글 기능 ********** */

	
	
	/* ********** 좋아요 기능 ********** */
	@Override
	public void like(LikeDto like) {
		msgDao.like(like);
	}
	

	@Override
	public void likeCancel(LikeDto like) {
		msgDao.likeCancel(like);
	}

	@Override
	public boolean likeChk(LikeDto like) {
		if( msgDao.likeChk(like) == null ) {
			return false;
		} else {
			return true;
		}
	}

	@Override
	public int getLikeNum(LikeDto like) {
		return msgDao.getLikeNum(like);
	}
	/* ********** 좋아요 기능 ********** */
	
	
	

	/* ********** 해쉬태그 검색기능 ********** */
	@Override
	public List<SearchDto> search(String keyword) {
		return msgDao.search(keyword);
	}

	@Override
	public List<String> searchResult(String keyword) {
		return msgDao.searchResult(keyword);
	}

	@Override
	public List<ImgDto> searchArticle(Model model, List<Integer> articleNums) {
		return msgDao.searchArticle(articleNums);
	}
	/* ********** 해쉬태그 검색기능 ********** */
}