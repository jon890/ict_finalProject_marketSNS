package com.ict.market.marketStaGram.dto;

public class SnsArticleDto {
	private int articleNum;
	private String id;
	private String content;
	private int likeNum;
	private String writeDate;
	
	public int getArticleNum() {
		return articleNum;
	}
	public void setArticleNum(int articleNum) {
		this.articleNum = articleNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getLikeNum() {
		return likeNum;
	}
	public void setLikeNum(int likeNum) {
		this.likeNum = likeNum;
	}
	public String getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
	
	@Override
	public String toString() {
		return "ArticleDto [articleNum=" + articleNum + ", id=" + id + ", content=" + content + ", likeNum=" + likeNum
				+ ", writeDate=" + writeDate + "]";
	}
	
}