package com.ict.market.main.dto;

public class MainhelpDto {
	private int articleNum;
	private String title;
	private int fileStatus;
	
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
	
	public int getFileStatus() {
		return fileStatus;
	}
	public void setFileStatus(int fileStatus) {
		this.fileStatus = fileStatus;
	}
	@Override
	public String toString() {
		return "MainhelpDto [articleNum=" + articleNum + ", title=" + title + ", fileStatus=" + fileStatus + "]";
	}
	
	
}
