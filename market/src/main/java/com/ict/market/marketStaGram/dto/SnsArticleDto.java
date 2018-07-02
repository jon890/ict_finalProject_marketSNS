package com.ict.market.marketStaGram.dto;

public class SnsArticleDto {
	private int articleNum;
	private String id;
	private String content;
	private int likeNum;
	private String writeDate;
	private int commentCount;
	
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
	public int getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}
	
	
	@Override
	public String toString() {
		return "SnsArticleDto [articleNum=" + articleNum + ", id=" + id + ", content=" + content + ", likeNum="
				+ likeNum + ", writeDate=" + writeDate + ", commentCount=" + commentCount + "]";
	}
	
	
}