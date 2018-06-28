package com.ict.market.marketStaGram.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.market.marketStaGram.dto.ImgDto;
import com.ict.market.marketStaGram.dto.SnsArticleDto;

@Repository
public class MsgDaoImpl implements MsgDao {
	
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private final String nameSpace = "com.ict.market.marketStaGram.dao.MsgDao";
	
	
	
	/* ********** ���� ������ �ε��� �� �������� ��� ********** */
	@Override
	public List<String> list() {
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
	
	
}
