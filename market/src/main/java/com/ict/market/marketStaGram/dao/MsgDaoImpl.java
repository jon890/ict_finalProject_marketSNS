package com.ict.market.marketStaGram.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.market.marketStaGram.dto.ImgDto;
import com.ict.market.marketStaGram.dto.MsgCommentDto;
import com.ict.market.marketStaGram.dto.SnsArticleDto;

@Repository
public class MsgDaoImpl implements MsgDao {
	
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private final String nameSpace = "com.ict.market.marketStaGram.dao.MsgDao";
	
	
	
	/* ********** 메인 페이지 로딩시 글 가져오기 기능 ********** */
	@Override
	public List<ImgDto> list() {
		return sqlSession.selectList(nameSpace.concat(".list"));
	}
	/* ********** 메인 페이지 로딩시 글 가져오기 기능 ********** */

	
	
	/* ********** 게시판 글쓰기 기능 ********** */
	@Override
	public void write(SnsArticleDto snsArticle) {
		sqlSession.insert(nameSpace.concat(".write"), snsArticle);
	}

	@Override
	public void insertImg(ImgDto imgDto) {
		sqlSession.insert(nameSpace.concat(".insertImg"), imgDto);
	}
	/* ********** 게시판 글쓰기 기능 ********** */

	
	

	/* ********** 게시판 글 읽기 기능 ********** */
	@Override
	public SnsArticleDto read(int articleNum) {
		return sqlSession.selectOne(nameSpace.concat(".read"), articleNum);
	}
	
	@Override
	public List<String> getImgList(int articleNum) {
		return sqlSession.selectList(nameSpace.concat(".getImgList"), articleNum);
	}
	/* ********** 게시판 글 읽기 기능 ********** */
	
	
	/* ********** 게시판 글 삭제 기능 ********** */
	@Override
	public void delete(int articleNum) {
		sqlSession.delete(nameSpace.concat(".delete"), articleNum);
	}
	/* ********** 게시판 글 삭제 기능 ********** */
	
	

	/* ********** 댓글 달기 기능 ********** */
	@Override
	public void commentWrite(MsgCommentDto comment) {
		sqlSession.insert(nameSpace.concat(".commentWrite"), comment);
	}
	/* ********** 댓글 달기 기능 ********** */





	/* ********** 댓글 가져오기 기능 ********** */
	@Override
	public List<MsgCommentDto> getComments(int articleNum, int commentRow) {
		HashMap<String, Integer> hm = new HashMap<>();
		hm.put("articleNum", articleNum);
		hm.put("commentRow", commentRow);
		return sqlSession.selectList(nameSpace.concat(".getComments"), hm);
	}
	/* ********** 댓글 가져오기 기능 ********** */
	

}