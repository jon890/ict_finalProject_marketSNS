package com.ict.market.favorite.service;

import java.io.File;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.ict.market.favorite.common.NoticePage;
import com.ict.market.favorite.common.Page;
import com.ict.market.favorite.dao.FavoriteDao;
import com.ict.market.favorite.dto.CommentDto;
import com.ict.market.favorite.dto.FavoriteDto;
import com.ict.market.favorite.dto.FileDto;
import com.ict.market.favorite.dto.NoticeDto;

@Service
public class FavoriteServiceImpl implements FavoriteService {
	@Autowired
	private FavoriteDao favoriteDao;
	
	@Autowired
	private NoticePage noticePage;

	@Autowired
	private Page page;
	
	private static final Logger logger = LoggerFactory.getLogger(FavoriteServiceImpl.class);
	
	@Resource(name="pageSize")
	private int pageSize;
	@Resource(name="pageBlock")
	private int pageBlock;
	
	@Override
	public void write(FavoriteDto helpArticle,List<MultipartFile> fname,String uploadDir) {
		logger.info("진입1");
		if(fname.get(0).isEmpty()) {
		favoriteDao.write(helpArticle);
		}else {
			logger.info("진입2");
			helpArticle.setFileStatus((byte)1);
			favoriteDao.write(helpArticle);
			commonFileUpload(fname,helpArticle.getArticleNum(),uploadDir);
		}
	}
	
	public void commonFileUpload(List<MultipartFile> mfile,int articleNum,String uploadDir) {
		FileDto fileDto = null;
		//업로드된 파일을 for문으로 뽑아낸다.
		for(MultipartFile uploadFile : mfile) {
			if(!uploadFile.isEmpty()) {
				//파일을 storedFname에 넣고 
				String storedFname = save(uploadFile,uploadDir);
				fileDto = new FileDto();
				fileDto.setOriginFname(uploadFile.getOriginalFilename());
				fileDto.setStoredFname(storedFname);
				fileDto.setFilelength(uploadFile.getSize());
				fileDto.setArticleNum(articleNum);
				
				favoriteDao.insertFile(fileDto);
				
			}
		}
		
	}
	
	public String save(MultipartFile uploadFile,String uploadDir) {
		//UUID 파일명 앞에 절대 겹치지 않는 수 생성 +uploadfile filenamd을 가져와서 저장한다.
		String storedFname = UUID.randomUUID().toString()+"_"+uploadFile.getOriginalFilename();
		try {
			//filecopyiesUtil class를 사용해도 된다.
			uploadFile.transferTo(new File(uploadDir+storedFname));
		}catch(Exception e) {}
		
		return storedFname;
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
		if(fileStatus==1) {
			model.addAttribute("fileList",favoriteDao.getFiles(articleNum));
		}
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
	public void delete(String articleNum,String uploadDir) {
		
		List<String> deleteList = null;
		deleteList=favoriteDao.getFileName(articleNum);
		for(String storedFname:deleteList) {
			File deleteFname = new File(uploadDir+storedFname);
			if(deleteFname.exists()) {
				deleteFname.delete();
			}
		}
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
		System.out.println(favoriteDao.getComments(articleNum,commentRow));
		model.addAttribute("commentList",favoriteDao.getComments(articleNum,commentRow));
		return favoriteDao.getComments(articleNum,commentRow);
	}

	@Override
	public void commentDelete(String commentNum) {
		favoriteDao.commentDelete(commentNum);
	}
	
	@Override
	public FileSystemResource download(HttpServletResponse resp, String storedFname, String originFname,
			int fileLength,String uploadDir) {
		resp.setContentType("application/download");
		resp.setContentLength(fileLength);
		try {
			originFname = URLEncoder.encode(originFname, "UTF-8").replace("+","%20").replace("%28","(").replace("%29",")");
		}catch(Exception e) {
		}
		resp.setHeader("Content-Disposition","attachment;" +"filename=\""+originFname+ "\";");
		FileSystemResource fsr = new FileSystemResource(uploadDir+storedFname);
		return fsr;
	}
	
	@Override
	public CommentDto commentgetUpdate(String commentNum){
		return favoriteDao.commentgetUpdate(commentNum);
	}
	@Override
	public void commentUpdate(CommentDto comment) {
		favoriteDao.commentUpdate(comment);
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