package com.ict.market.marketStaGram.dto;

public class LikeDto {
	private int likeNum;
	private int likeStatus;
	private String id;
	private int articleNum;
	
	public int getLikeNum() {
		return likeNum;
	}
	public void setLikeNum(int likeNum) {
		this.likeNum = likeNum;
	}
	public int getLikeStatus() {
		return likeStatus;
	}
	public void setLikeStatus(int likeStatus) {
		this.likeStatus = likeStatus;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getArticleNum() {
		return articleNum;
	}
	public void setArticleNum(int articleNum) {
		this.articleNum = articleNum;
	}
	
	@Override
	public String toString() {
		return "LikeDto [likeNum=" + likeNum + ", likeStatus=" + likeStatus + ", id=" + id + ", articleNum="
				+ articleNum + "]";
	}
}