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
	
	
	/* ********** �ش��ϴ� �������� �´� �Խù� �������� ��� ********** */
	@Override
	public List<ImgDto> list(Model model, int pageNum) {
		HashMap<String, Integer> hm = new HashMap<>();	
		hm.put("startRow", 1 + (pageNum-1) * 9);
		hm.put("endRow", pageNum * 9);
		return msgDao.list(hm);	
	}
	/* ********** �ش��ϴ� �������� �´� �Խù� �������� ��� ********** */
	
	
	
	
	/* ********** �ش��ϴ� ���� ��۰��� �������� ��� ********** */
	@Override
	public int getCommentNum(int articleNum) {
		return msgDao.getCommentNum(articleNum);
	}
	/* ********** �ش��ϴ� ���� ��۰��� �������� ��� ********** */


	
	
	/* ********** �Խ��� �۾��� ��� ********** */
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
	/* ********** �Խ��� �۾��� ��� ********** */



	/* ********** �Խ��� �� �б� ��� ********** */
	@Override
	public void read(int articleNum, Model model) {
		model.addAttribute("snsArticle", msgDao.read(articleNum));
		model.addAttribute("imgs", msgDao.getImgList(articleNum));
	}
	/* ********** �Խ��� �� �б� ��� ********** */
	
	
	
	
	/* ********** �Խ��� �� ���� ��� ********** */
	@Override
	public void delete(int articleNum, String uploadDir) {
		// ���� ���� �� �� �̹����� ���丮������ ����
		List<String> imgNameList = msgDao.getImgList(articleNum);
		for( String imgName : imgNameList) {
			File storageImg = new File(uploadDir + imgName);
			System.out.println("���ϻ��� �̸� Ȯ�� = " + uploadDir + imgName);
			if( storageImg.exists() ) {
				storageImg.delete();
			}
		}
		// �Խù� ����
		msgDao.delete(articleNum);
	}
	/* ********** �Խ��� �� ���� ��� ********** */


	

	/* ********** ���  ��� ********** */
	@Override
	public void commentWrite(MsgCommentDto comment) {
		msgDao.commentWrite(comment);
	}

	@Override
	public List<MsgCommentDto> getComments(int articleNum, int commentRow) {
		return msgDao.getComments(articleNum, commentRow);
	}
	/* ********** ��� ��� ********** */

	
	
	/* ********** ���ƿ� ��� ********** */
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
	/* ********** ���ƿ� ��� ********** */
	
	
	

	/* ********** �ؽ��±� �˻���� ********** */
	@Override
	public HashMap<String, SearchDto> search(String search) {
		msgDao.search(search);
		return null;
	}
	/* ********** �ؽ��±� �˻���� ********** */
}