package com.ict.market.favorite.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.market.favorite.dto.CommentDto;
import com.ict.market.favorite.dto.FavoriteDto;
import com.ict.market.favorite.dto.FileDto;
import com.ict.market.favorite.dto.NoticeDto;

@Repository
public class FavoriteDaoImpl implements FavoriteDao {
	@Autowired
	private SqlSessionTemplate sqlsession;
	private final String nameSpace = "com.ict.market.favorite.dao.FavoriteDao";
	/* ******************** 고객센터 게시판 기능 ***************** */
	@Override
	public void write(FavoriteDto helpArticle) {
		
		sqlsession.insert(nameSpace+".write",helpArticle);
	}

	@Override
	public List<FavoriteDto> help(HashMap<String, String> pagingMap) {
	
		return sqlsession.selectList(nameSpace+".help",pagingMap);
	}

	@Override
	public int getTotalCount() {
	
		return sqlsession.selectOne(nameSpace+".getTotalCount");
	}

	@Override
	public FavoriteDto content(String articleNum) {
		
		return sqlsession.selectOne(nameSpace+".content",articleNum);
	}

	@Override
	public FavoriteDto getUpdateArticle(String articleNum) {

		return sqlsession.selectOne(nameSpace+".getUpdateArticle",articleNum);	
	}

	@Override
	public void updateArticle(FavoriteDto helpArticle) {
		
		sqlsession.update(nameSpace+".updateArticle",helpArticle);
		
	}
	@Override
	public void increaseHit(String articleNum) {
		
		sqlsession.update(nameSpace+".increaseHit",articleNum);
		
	}

	@Override
	public void delete(String articleNum) {
		sqlsession.delete(nameSpace+".delete",articleNum);
	}
	/* ****************comment관련 기능****************** */
	@Override
	public void insertComment(CommentDto comment) {
		sqlsession.insert(nameSpace+".insertComment",comment);
	}

	@Override
	public List<CommentDto> getComments(int articleNum, int commentRow) {
		HashMap<String,Integer> hm = new HashMap<>();
		hm.put("articleNum",articleNum);
		hm.put("commentRow",commentRow);
		return sqlsession.selectList(nameSpace+".getComments",hm);
	}

	@Override
	public void commentDelete(String commentNum) {
		sqlsession.delete(nameSpace+".commentDelete",commentNum);
	}
	@Override
	public CommentDto commentgetUpdate(String commentNum) {
		return sqlsession.selectOne(nameSpace+".commentgetUpdate",commentNum);
	}
	
	@Override
	public void commentUpdate(CommentDto comment) {
		sqlsession.update(nameSpace+".commentUpdate",comment);
	}
	
	
	
	/* ********** 파일업로드 관련 기능 ********** */
	
	


	@Override
	public void insertFile(FileDto fileDto) {
		sqlsession.insert(nameSpace+".insertFile",fileDto);
	}
	
	@Override
	public List<FileDto> getFiles(String articleNum) {
		return sqlsession.selectList(nameSpace+".getFiles",articleNum);
	}
	
	@Override
	public List<String> getFileName(String articleNum) {
		
		return sqlsession.selectList(nameSpace+".getFileName",articleNum);
	}
	
	
	/* ********** 파일업로드 관련 기능 ********** */
	
	

	/* ********** 공지사항 게시판 기능 ********** */
	@Override
	public void noticeWrite(NoticeDto notice) {
		sqlsession.insert(nameSpace+".noticeWrite",notice);
	}


	@Override
	public List<NoticeDto> noticeList(HashMap<String, String> pagingMap) {
		return sqlsession.selectList(nameSpace+".noticeList",pagingMap);
	}

	@Override
	public NoticeDto noticeContent(int articleNum) {
		return sqlsession.selectOne(nameSpace+".noticeContent", articleNum);
	}

	@Override
	public void noticeDelete(int articleNum) {
		sqlsession.delete(nameSpace+".noticeDelete", articleNum);
	}

	@Override
	public NoticeDto noticeGetUpdate(int articleNum) {
		return sqlsession.selectOne(nameSpace+".noticeGetUpdate", articleNum);
	}

	@Override
	public void noticePostUpdate(NoticeDto notice) {
		sqlsession.update(nameSpace+".noticePostUpdate", notice);
	}

	@Override
	public int getNoticeCount() {
		return sqlsession.selectOne(nameSpace+".getNoticeCount");
	}
	/* ********** 공지사항 게시판 기능 ********** */
}