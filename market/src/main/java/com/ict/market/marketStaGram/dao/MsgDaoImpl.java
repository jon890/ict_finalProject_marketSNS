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
	
	
	
	/* ********** ���� ������ �ε��� �� �������� ��� ********** */
	@Override
	public List<ImgDto> list() {
		return sqlSession.selectList(nameSpace.concat(".list"));
	}
	/* ********** ���� ������ �ε��� �� �������� ��� ********** */

	
	
	/* ********** �Խ��� �۾��� ��� ********** */
	@Override
	public void write(SnsArticleDto snsArticle) {
		sqlSession.insert(nameSpace.concat(".write"), snsArticle);
	}

	@Override
	public void insertImg(ImgDto imgDto) {
		sqlSession.insert(nameSpace.concat(".insertImg"), imgDto);
	}
	/* ********** �Խ��� �۾��� ��� ********** */

	
	

	/* ********** �Խ��� �� �б� ��� ********** */
	@Override
	public SnsArticleDto read(int articleNum) {
		return sqlSession.selectOne(nameSpace.concat(".read"), articleNum);
	}
	
	@Override
	public List<String> getImgList(int articleNum) {
		return sqlSession.selectList(nameSpace.concat(".getImgList"), articleNum);
	}
	/* ********** �Խ��� �� �б� ��� ********** */
	
	
	/* ********** �Խ��� �� ���� ��� ********** */
	@Override
	public void delete(int articleNum) {
		sqlSession.delete(nameSpace.concat(".delete"), articleNum);
	}
	/* ********** �Խ��� �� ���� ��� ********** */
	
	

	/* ********** ��� �ޱ� ��� ********** */
	@Override
	public void commentWrite(MsgCommentDto comment) {
		sqlSession.insert(nameSpace.concat(".commentWrite"), comment);
	}
	/* ********** ��� �ޱ� ��� ********** */





	/* ********** ��� �������� ��� ********** */
	@Override
	public List<MsgCommentDto> getComments(int articleNum, int commentRow) {
		HashMap<String, Integer> hm = new HashMap<>();
		hm.put("articleNum", articleNum);
		hm.put("commentRow", commentRow);
		return sqlSession.selectList(nameSpace.concat(".getComments"), hm);
	}
	/* ********** ��� �������� ��� ********** */
	

}