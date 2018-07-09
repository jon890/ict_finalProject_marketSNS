package com.ict.market.main.dto;

public class MainnoticeDto {
	private int articleNum;
	private String title;
	
	
	public int getArticleNum() {
		return articleNum;
	}
	public void setArticleNum(int articleNum) {
		this.articleNum = articleNum;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Override
	public String toString() {
		return "MainnoticeDto [articleNum=" + articleNum + ", title=" + title + "]";
	}
	
	
	
	
}
